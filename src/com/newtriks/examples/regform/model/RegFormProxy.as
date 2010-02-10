
/*
 * RegFormRLSExample - RegFormProxy.as
 *
 * Copyright (c) 2010. Newtriks Ltd <simon@newtriks.com>
 * Your reuse is governed by the Creative Commons Attribution 3.0 License
 */

package com.newtriks.examples.regform.model
{
    import com.newtriks.examples.regform.model.vo.RegFormData;

    import org.robotlegs.mvcs.Actor;

    // Defined signal listener class storing user data
    public class RegFormProxy extends Actor
    {
        public function RegFormProxy(){}

        public function get regFormData():RegFormData
        {
            return _regFormData;
        }

        public function set regFormData( value:RegFormData ):void
        {
            _regFormData = value;

            trace( value.email + " " + value.password );
        }

        protected var _regFormData:RegFormData;
    }
}