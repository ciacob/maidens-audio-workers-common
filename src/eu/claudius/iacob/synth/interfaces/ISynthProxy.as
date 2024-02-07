package eu.claudius.iacob.synth.interfaces {
import flash.events.IEventDispatcher;
import flash.utils.ByteArray;

/**
 * Defines the contract for a SynthProxy, which handles converting an organized sound map into audio data,
 * ready to be fed into a sound interface, and manages playback.
 */
public interface ISynthProxy extends IEventDispatcher {

    /**
     * Provides access to the audio storage ByteArray this class was instantiated with.
     */
    function get audioStorage():ByteArray;

    /**
     * Returns the currently stored total length, in milliseconds, of the audio that has been cached so far.
     */
    function get cachedAudioLength():uint;

    /**
     * Renders offline the music described in the given tracks and returns the resulting samples inside of a ByteArray.
     * This samples can be fed into the system's default sound interface for playback.
     */
    function preRenderAudio(sounds:Object, tracks:Array, normalizePeak:Boolean = false, sessionId:String = null):void;

    /**
     * Plays back the audio that was fully pre-rendered and expects no further changes/additions.
     */
    function playBackPrerenderedAudio():void;

    /**
     * Plays back the audio while it is still being rendered, and is expected to undergo changes as tracks/voices are added to the mix.
     */
    function playBackStreamedAudio():void;

    /**
     * Interrupts playback of the prerendered audio if it is in progress, optionally "rewinding" it.
     */
    function stopPrerenderedPlayback(rewind:Boolean = false):void;

    /**
     * Interrupts playback of the streamed audio.
     */
    function stopStreamedPlayback(rewind:Boolean = false):void;

    /**
     * Flags the internal audio storage as having been changed externally.
     */
    function invalidateAudioCache():void;

    /**
     * Computes the length, in milliseconds, of the audio that has been rendered so far, and stores the result internally.
     */
    function computeCachedAudioLength():void;
}
}
