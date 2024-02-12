import { useLexicalComposerContext } from "@lexical/react/dist/LexicalComposerContext";
import { TreeView } from "@lexical/react/dist/LexicalTreeView";

export default function TreeViewPlugin() {
  const [editor] = useLexicalComposerContext();
  return (
    <TreeView
      viewClassName="tree-view-output"
      timeTravelPanelClassName="debug-timetravel-panel"
      timeTravelButtonClassName="debug-timetravel-button"
      timeTravelPanelSliderClassName="debug-timetravel-panel-slider"
      timeTravelPanelButtonClassName="debug-timetravel-panel-button"
      editor={editor}
    />
  );
}

