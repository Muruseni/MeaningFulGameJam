InteractType = "none";
dialogue_used = false;


function Interact()
{
    switch (InteractType)
    {
        case "npc":
            scDialogueStart(oDialogue, room, self);
            break;

        case "chair":
            show_debug_message("Chair");
            scDialogueStart(oDialogue, room, self);
            scSittable(self);
            break;
    }
}
