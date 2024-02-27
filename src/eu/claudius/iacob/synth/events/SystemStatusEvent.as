package eu.claudius.iacob.synth.events {

import eu.claudius.iacob.synth.utils.ProgressReport;

import flash.events.Event;

/**
 * A dedicated custom Event class to be used for moving arround instances of the ProgressReport class.
 * @see eu.claudius.iacob.synth.utils.ProgressReport for details.
 */
public class SystemStatusEvent extends Event {
    public static const REPORT_EVENT:String = 'reportEvent';

    private var _report:ProgressReport;

    public function SystemStatusEvent(report:ProgressReport) {
        super(REPORT_EVENT);
        _report = report;
    }

    public function get report():ProgressReport {
        return _report;
    }

    /**
     * @see flash.events.Event.clone()
     */
    override public function clone():Event {
        return new SystemStatusEvent(_report);
    }
}
}
