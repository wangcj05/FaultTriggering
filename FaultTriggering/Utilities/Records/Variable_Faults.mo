within FaultTriggering.Utilities.Records;
record Variable_Faults "Variable Faults"

// ------- --------------------------------------------
// ------- Variable Faults -------------------------
// ------- --------------------------------------------

// ------- Real Variable Faults ------------
 FaultTriggering.Utilities.Records.RealFaults realFaults[:] annotation (Dialog(
      label="Real Variable Fault names",
      button="Select parameters",
      onlyStart=true,
      fields(name=initialName, unit=initialValue.path)));

 FaultTriggering.Utilities.Types.Fault_SelectRealFault realFaultSelect[:]
    "Real Fault Index" annotation (Dialog(
      tab="Advanced",
      treeView=false,
      label="Real Variable Fault values",
      rowHeadings=realFaults.path,
      columnHeadings={"Real Fault"}));
 FaultTriggering.Utilities.Types.Fault_SelectRealFault realFaultMode[:]
    "Optional fault mode for model reconfiguration" annotation (Dialog(
      label="Real Model Configuration",
      treeView=true,
      rowHeadings=realFaults.path,
      columnHeadings={"Real Fault"}));

  FaultTriggering.Utilities.Records.RealFaultValue  realFaultDefault[:]
    "Default Real Fault Values" annotation (Dialog(
      label="Default Variable Fault values",
      treeView=true,
      rowHeadings=realFaults.path,
      columnHeadings={"Default Real Fault"}));                      //[size(realFaultMode, 1)] =  fill(1,size(realFaults, 1))

// ------- Integer Variable Faults ------------
 FaultTriggering.Utilities.Records.IntegerFaults integerFaults[:] annotation (
      Dialog(
      label="Integer Variable Fault names",
      button="Select parameters",
      onlyStart=true,
      fields(name=initialName, unit=initialValue.path)));

 FaultTriggering.Utilities.Types.Fault_SelectIntegerFault integerFaultSelect[:]
    "Integer Fault Index" annotation (Dialog(
      tab="Advanced",
      treeView=false,
      label="Integer Variable Fault values",
      rowHeadings=integerFaults.path,
      columnHeadings={"Integer Fault"}));
 FaultTriggering.Utilities.Types.Fault_SelectIntegerFault integerFaultMode[:]
    "Optional fault mode for model reconfiguration" annotation (Dialog(
      label="Integer Model Configuration",
      treeView=true,
      rowHeadings=integerFaults.path,
      columnHeadings={"Integer Fault"}));
   FaultTriggering.Utilities.Records.IntegerFaultValue    integerFaultDefault[:]
    "Default Real Fault Values" annotation (Dialog(
      label="Default Variable Fault values",
      treeView=true,
      rowHeadings=integerFaults.path,
      columnHeadings={"Default Integer Fault"}));                            //[size(integerFaults, 1)] =   fill(1,size(integerFaults, 1))

// ------- Boolean Variable Faults ------------
 FaultTriggering.Utilities.Records.BooleanFaults booleanFaults[:] annotation (
      Dialog(
      label="Boolean Parameter Fault names",
      label="Boolean Fault names",
      button="Select parameters",
      onlyStart=true,
      fields(name=initialName, unit=initialValue.path)));

 FaultTriggering.Utilities.Types.Fault_SelectBooleanFault booleanFaultSelect[:]
    "Boolean Fault Index" annotation (Dialog(
      tab="Advanced",
      treeView=false,
      label="Boolean Variable Fault values",
      treeView=true,
      rowHeadings=booleanFaults.path,
      columnHeadings={"Boolean Fault"}));
 FaultTriggering.Utilities.Types.Fault_SelectBooleanFault booleanFaultMode[:]
    "Optional fault mode for model reconfiguration" annotation (Dialog(
      label="Boolean Model Configuration",
      treeView=true,
      rowHeadings=booleanFaults.path,
      columnHeadings={"Boolean Fault"}));
  FaultTriggering.Utilities.Records.BooleanFaultValue     booleanFaultDefault[:]
    "Default Real Fault Values" annotation (Dialog(
      label="Default Variable Fault values",
      treeView=true,
      rowHeadings=booleanFaults.path,
      columnHeadings={"Default Boolean Fault"}));                            //[size(booleanFaults, 1)] =  fill(true,size(booleanFaults, 1))

  annotation (Icon(graphics={Text(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          textStyle={TextStyle.Bold,TextStyle.Italic},
          textString="V")}), Diagram(graphics={Text(
          extent={{-100,-60},{100,60}},
          lineColor={0,0,255},
          textString="Par")}),
    Documentation(revisions="<html><table border=0 cellspacing=0 cellpadding=0>
  <tr><td valign=\"center\"> <img src=\"modelica://FaultTriggering/Resources/Documentation/Images/logo_dlr.png\" width=60></td>
    <td valign=\"center\"><b>Copyright</b>
      <br><b>&copy; 2012-2015, DLR Institute of System Dynamics and Control</b></td>
  </tr>
 </table>
</html>"));
end Variable_Faults;
