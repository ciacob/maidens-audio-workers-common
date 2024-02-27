package eu.claudius.iacob.synth.constants {

/**
 * Holds constants defining various type of operations to be described by an AnnotationTrackObject payload's "type"
 * (defined as PayloadKeys.TYPE).
 *
 * For details:
 * @see eu.claudius.iacob.synth.sound.map.AnnotationTrackObject
 * @see eu.claudius.iacob.synth.constants.PayloadKeys
 */
public class OperationTypes {
    public function OperationTypes() {
    }

    public static const TYPE_NOTE_ON : String = '$noteOn';
    public static const TYPE_NOTE_OFF : String = '$noteOff';
    public static const TYPE_CC : String = '$cc';
    public static const TYPE_HIGHLIGHT_SCORE_ITEM : String = '$highlightScoreItem';
    public static const TYPE_UNHIGHLIGHT_SCORE_ITEM : String = '$unhighlightScoreItem';
    public static const TYPE_CLOSE_SCORE : String = '$closeScore';
    public static const TYPE_REQUEST_SAMPLES : String = '$requestSamples';
    public static const TYPE_SEEK_TO : String = '$seekTo';
    public static const TYPE_UNKNOWN : String = '$unknown';
}
}
