package eu.claudius.iacob.synth.utils {
public class AnalysisResult {

    private var _canEngagePlayback:Boolean;

    private var _shouldIncreaseBuffer:Boolean;

    private var _suggestedBufferIncreaseFactor:Number;

    private var _shouldAddWorker:Boolean;

    private var _avgRenderingSpeed:Number;

    /**
     * Class that packs together information about the result of an audio rendering analysis operation. This information
     * includes observed speed, and hints for any suitable actions that should be carried on in order to make amendments
     * to the process' efficiency.
     *
     * @param   avgRenderingSpeed
     *          Average audio rendering speed, as a factor, e.g., `2` means audio is rendered twice as fast as it would
     *          play back.
     *
     * @param   canEngagePlayback
     *          Whether streaming play back could, most likely, be engaged (e.g., because chance of drop-outs appears
     *          low).
     *
     * @param   shouldIncreaseBuffer
     *          Whether to increase the playback buffer (e.g., in order for drop-outs to be less likely in the future).
     *
     * @param   suggestedBufferIncreaseFactor
     *          A factor the client code could use in order to decide how much to increase the playback buffer (e.g.,
     *          `2` means the playback buffer should be doubled).
     *
     * @param   shouldAddWorker
     *          Whether to add another parallel worker for rendering audio, in order to improve audio rendering speed
     *          (at the cost of increased CPU and memory usage).
     */
    public function AnalysisResult(avgRenderingSpeed:Number, canEngagePlayback:Boolean,
                                   shouldIncreaseBuffer:Boolean, suggestedBufferIncreaseFactor:Number,
                                   shouldAddWorker:Boolean) {

        _avgRenderingSpeed = avgRenderingSpeed;
        _canEngagePlayback = canEngagePlayback;
        _shouldIncreaseBuffer = shouldIncreaseBuffer;
        _suggestedBufferIncreaseFactor = suggestedBufferIncreaseFactor;
        _shouldAddWorker = shouldAddWorker;
    }

    public function get canEngagePlayback():Boolean {
        return _canEngagePlayback;
    }

    public function get shouldIncreaseBuffer():Boolean {
        return _shouldIncreaseBuffer;
    }

    public function get suggestedBufferIncreaseFactor():Number {
        return _suggestedBufferIncreaseFactor;
    }

    public function get shouldAddWorker():Boolean {
        return _shouldAddWorker;
    }

    public function get avgRenderingSpeed():Number {
        return _avgRenderingSpeed;
    }

    public function toString():String {
        return 'AnalysisResult instance:\n' + JSON.stringify({
            'canEngagePlayback': _canEngagePlayback,
            'shouldIncreaseBuffer': _shouldIncreaseBuffer,
            'suggestedBufferIncreaseFactor': _suggestedBufferIncreaseFactor,
            'shouldAddWorker': _shouldAddWorker,
            'avgRenderingSpeed': _avgRenderingSpeed
        }, null, '\t');
    }
}
}
