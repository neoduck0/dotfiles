import type { ExtensionAPI } from "@earendil-works/pi-coding-agent";

/** Rewind conversation history only; never restore files or run shell commands. */
export default function undoExtension(pi: ExtensionAPI) {
  pi.registerCommand("undo", {
    description: "Undo the last prompt and its responses (files unchanged)",
    handler: async (_args, ctx) => {
      if (!ctx.isIdle() || ctx.hasPendingMessages()) {
        ctx.ui.notify(
          "Stop the current response and clear queued messages before using /undo.",
          "warning",
        );
        return;
      }

      // Use only the active branch, including original entries before compaction.
      const prompts = ctx.sessionManager
        .getBranch()
        .filter(
          (entry) => entry.type === "message" && entry.message.role === "user",
        );
      if (prompts.length === 0) {
        ctx.ui.notify("Nothing to undo.", "warning");
        return;
      }

      const target = prompts[prompts.length - 1];
      // Pi treats navigation to the current leaf as a no-op. An unanswered
      // user message may be that leaf; add non-context metadata on the branch
      // we're leaving so navigation can still rewind to before the prompt.
      if (target.id === ctx.sessionManager.getLeafId()) {
        pi.appendEntry("undo-navigation", { targetId: target.id });
      }

      // Selecting a user message navigates to its parent and restores its text
      // to the TUI editor. Do not summarize: that would leak undone context back.
      const result = await ctx.navigateTree(target.id, { summarize: false });
      ctx.ui.notify(
        result.cancelled
          ? "Undo cancelled."
          : "Undid the last prompt and its responses. Files unchanged.",
        "info",
      );
    },
  });
}
