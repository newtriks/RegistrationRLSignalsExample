/*
 * RegFormRLSExample - HandleRegFormDataCommand.as
 *
 * Copyright (c) 2010. Newtriks Ltd <simon@newtriks.com>
 * Your reuse is governed by the Creative Commons Attribution 3.0 License
 */

package com.newtriks.examples.regform.controller
{
    import com.newtriks.examples.regform.model.RegFormProxy;
    import com.newtriks.examples.regform.model.vo.RegFormData;
    import com.newtriks.examples.regform.signals.RegFormUpdatedSignal;

    import org.robotlegs.mvcs.Command;

    public class HandleRegFormDataCommand extends Command
    {
        [Inject]
	    public var regFormUpdated:RegFormUpdatedSignal;

        [Inject]
        public var regFormPrx:RegFormProxy;

        override public function execute():void
        {
            regFormUpdated.add( onRegFormData );
        }

        // Handle Signal data - lets store it in a proxy
        protected function onRegFormData( val:RegFormData ):void
        {
            regFormPrx.regFormData = val;
        }
    }
}