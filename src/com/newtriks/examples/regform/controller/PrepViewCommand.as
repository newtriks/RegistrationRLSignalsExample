/*
 * RegFormRLSExample - PrepViewCommand.as
 *
 * Copyright (c) 2010. Newtriks Ltd <simon@newtriks.com>
 * Your reuse is governed by the Creative Commons Attribution 3.0 License
 */

package com.newtriks.examples.regform.controller
{
    import com.newtriks.examples.regform.view.RegViewMediator;
    import com.newtriks.examples.regform.view.components.RegView;

    import org.robotlegs.mvcs.Command;

    public class PrepViewCommand extends Command
    {
        override public function execute():void
        {
            // Map Mediator
            mediatorMap.mapView( RegView, RegViewMediator );
        }
    }
}