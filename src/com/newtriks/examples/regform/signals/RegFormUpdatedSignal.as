/*
 * RegFormRLSExample - RegFormUpdatedSignal.as
 *
 * Copyright (c) 2010. Newtriks Ltd <simon@newtriks.com>
 * Your reuse is governed by the Creative Commons Attribution 3.0 License
 */

package com.newtriks.examples.regform.signals
{
    import com.newtriks.examples.regform.model.vo.RegFormData;

    import org.osflash.signals.Signal;

    public class RegFormUpdatedSignal extends Signal
    {
        public function RegFormUpdatedSignal()
        {
            super( RegFormData );
        }
    }
}