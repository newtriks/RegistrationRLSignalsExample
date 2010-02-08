/*
 * RegFormRLSExample - RegViewMediator.as
 *
 * Copyright (c) 2010. Newtriks Ltd <simon@newtriks.com>
 * Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package com.newtriks.examples.regform.view
{

    import com.newtriks.examples.regform.model.vo.RegFormData;
    import com.newtriks.examples.regform.signals.RegFormUpdatedSignal;
    import com.newtriks.examples.regform.view.components.RegView;

    import org.robotlegs.mvcs.Mediator;

    public class RegViewMediator extends Mediator
    {
        [Inject]
        public var regview:RegView;
        
        [Inject]
		public var regFormUpdated:RegFormUpdatedSignal;

        override public function onRegister():void
        {
            // Signal listener [handler in this class] for view submit
            regview.submitClicked.add( onSubmitClicked );
        }

        private function onSubmitClicked():void
        {
            // Construct form object and dispatch
            regFormUpdated.dispatch( regFormData );
        }

        protected function get regFormData():RegFormData
        {
            // Construct form data object
            var rfd:RegFormData = new RegFormData();
            rfd.email = regview.email_ti.text;
            rfd.password = regview.password_ti.text;
            return rfd;
        }
    }
}