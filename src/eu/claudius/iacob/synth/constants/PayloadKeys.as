package eu.claudius.iacob.synth.constants {

    /**
     * Holds constants defining various values to be used inside an AnnotationTrackObject's `payload`.
     * @see eu.claudius.iacob.synth.sound.map.AnnotationTrackObject for details.
     */
    public class PayloadKeys {
        public function PayloadKeys() {
        }

        public static const DURATION : String = 'duration';
        public static const ID : String = 'id';
        public static const KEY : String = 'key';
        public static const PAN : String = 'pan';
        public static const PRESET : String = 'preset';
        public static const RENDER_SCOPE : String = 'seekScope';
        public static const SCORE_ITEM_ID : String = 'scoreItemId';
        public static const SEEK_SCOPE : String = 'renderScope';
        public static const TIME : String = 'time';
        public static const TYPE : String = 'type';
        public static const VELOCITY : String = 'velocity';
    }
}
