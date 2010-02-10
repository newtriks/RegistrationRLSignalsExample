/*
 * RegFormRLSExample - RegFormContext.as
 *
 * Copyright (c) 2010. Newtriks Ltd <simon@newtriks.com>
 * Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package com.newtriks.examples.regform
{
    import com.newtriks.examples.regform.controller.HandleRegFormDataCommand;
    import com.newtriks.examples.regform.controller.PrepModelCommand;
    import com.newtriks.examples.regform.controller.PrepViewCommand;
    import com.newtriks.examples.regform.signals.ApplicationStartedSignal;

    import com.newtriks.examples.regform.signals.RegFormUpdatedSignal;

    import org.robotlegs.mvcs.SignalContext;

    public class RegFormContext extends SignalContext
    {
        override public function startup():void
        {
            // Map Signals
			signalCommandMap.mapSignalClass( RegFormUpdatedSignal, HandleRegFormDataCommand, true );

            // Could move this logic to a StartupCommand
            var startupSignal:ApplicationStartedSignal = new ApplicationStartedSignal();
            signalCommandMap.mapSignal( startupSignal, PrepModelCommand, true );
            signalCommandMap.mapSignal( startupSignal, PrepViewCommand, true );
			startupSignal.dispatch();
        }
    }
}