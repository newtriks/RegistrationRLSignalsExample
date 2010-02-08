/*
 * RegFormRLSExample - PrepModelCommand.as
 *
 * Copyright (c) 2010. Newtriks Ltd <simon@newtriks.com>
 * Your reuse is governed by the Creative Commons Attribution 3.0 License
 */

package com.newtriks.examples.regform.controller
{
    import com.newtriks.examples.regform.model.RegFormProxy;

    import org.robotlegs.mvcs.Command;

    public class PrepModelCommand extends Command
    {
        override public function execute():void
        {
            // Map Proxy
            injector.mapSingleton( RegFormProxy );
        }
    }
}