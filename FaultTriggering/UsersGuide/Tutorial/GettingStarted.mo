within FaultTriggering.UsersGuide.Tutorial;
class GettingStarted "Getting started"
extends FaultTriggering.Utilities.Icons.Information;
    annotation (Documentation(info="<html>
<p>The <b>FaultTriggering</b> Toolbox accomodates 2 fault types;</p>
<p><ol>
<li><b>Parameter Faults</b>: Faults that at set at the beginning of each simulation.</li>
<li><b>Variable Faults</b>: Faults that can vary during simulation time.</li>
</ol></p>
<p>Both Faults can be several data types:</p>
<p><ol>
<li><b>Boolean</b>: Triggering a hard fault like Actuator disconnects, Rollerscrew jam and the Breakage of electrical cable.</li>
<li><b>Integer</b>: Can trigger Fault cases like Sensor faults(sensor has a zero output, sensor saturates, ...)</li>
<li><b>Real</b>: Can be used to set fault levels like bearing friction, increasing pressure losses.</li>
</ol></p>
<p>All Fault models are supllied in<b> FaultTriggering.FaultOutput</b>.</p>
<p>All Variable Faults are controlled by a global <a href=\"FaultTriggering.FaultOutput.FaultTrigger\">model</a> &QUOT;broadcasting&QUOT; the faults. Each variable fault therefore must be coupled to a fault channel from the global FaultTriggering model. This makes also external triggering of the faults (e.g. from Simulink) possible.</p>
<p><br/>Using these fault models all commonly know faults can be modelled. In <a href=\"FaultTriggering.UsersGuide.Tutorial.FaultModelling\">Fault Modelling</a> is explained how to use these blocks.</p>
</html>"));
end GettingStarted;
