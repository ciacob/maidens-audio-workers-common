package eu.claudius.iacob.synth.utils {
public class PresetDescriptor {

    private var _number:uint;
    private var _label:String;

    /**
     * Class packing information that represents a "sound preset". Essentially this means putting together a label
     * (e.g., "Violin") and a MIDI patch number (e.g., `40`).
     *
     * @param   number
     *          The General MIDI patch number representing this preset (e.g., `40` for solo violin).
     *
     * @param   label
     *          A user-friendly label to be used in the user-facing UI, if needed, such as "Violin".
     */
    public function PresetDescriptor(number:uint, label:String) {
        _number = number;
        _label = label;
    }

    public function get number():uint {
        return _number;
    }

    public function get label():String {
        return _label;
    }

    public function toString () : String {
        return "PresetDescriptor {" + _number + ', ' + _label + '}';
    }
}
}
