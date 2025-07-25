within Modelica.UsersGuide;
package ReleaseNotes "Release notes"
  extends Modelica.Icons.ReleaseNotes;

class VersionManagement "Version Management"
  extends Modelica.Icons.ReleaseNotes;

      annotation (Documentation(info="<html>
<h4>Development branches</h4>
<p>
Further development and maintenance of the Modelica Standard Library is performed with
two branches on the public <a href=\"https://github.com/modelica/ModelicaStandardLibrary.git\">GitHub repository</a> of the Modelica Association.
</p>
<p>
Since version 4.0.0 the Modelica Standard Library uses semantic versioning following the
convention:
</p>
 <blockquote><strong><code>MAJOR.MINOR.BUGFIX</code></strong></blockquote>
<p>
This provides a mechanism for maintaining releases and bug-fixes in a well defined way and is inspired
by (but not identical to) <a href=\"https://semver.org\">https://semver.org</a>.
</p>

<h5>Main development branch</h5>
<p>
Name: \"master\"
</p>

<p>
This branch contains the actual development version, i.e., all bug-fixes
and new features.
New features must have been tested before including them.
However, the exhaustive tests for a new version are (usually) not performed.
This version is usually only be used by the developers of the
Modelica Standard Library and is not utilized by Modelica users.
</p>

<h5>Maintenance branch</h5>
<p>
Name: \"maint/4.1.x\"
</p>

<p>
This branch contains the released Modelica Standard Library version (e.g., v4.1.0)
where all bug-fixes since this release date are included
(also consecutive <code>BUGFIX</code> versions 4.1.1, 4.1.2, etc.,
up to when a new <code>MINOR</code> or <code>MAJOR</code>  release becomes available;
i.e., there will not be any further <code>BUGFIX</code> versions (i.e., 4.1.x) of a previous release).
These bug-fixes might not yet be tested with all test cases or with
other Modelica libraries. The goal is that a vendor may take this version at
any time for a new release of its software, in order to incorporate the latest
bug fixes.
</p>

<h4>Contribution workflow</h4>
<p>
The general <a href=\"https://guides.github.com/activities/forking/\">contribution workflow</a> is usually as follows:
</p>

<ol>
<li>Fork the repository to your account by
   <a href=\"https://help.github.com/articles/fork-a-repo/\">using the Fork button</a> of the GitHub repository site.</li>
<li>Clone the forked repository to your computer. Make sure to checkout the maintenance branch if the bug fix is going to get merged to the maintenance branch.</li>
<li>Create a new topic branch and give it a meaningful name, like, e.g., \"issue2161-fix-formula\".</li>
<li>Do your code changes and commit them, one change per commit.<br>
   Single commits can be copied to other branches.<br>
   Multiple commits can be squashed into one, but splitting is difficult.</li>
<li>Once you are done, push your topic branch to your forked repository.</li>
<li>Go to the upstream <a href=\"https://github.com/modelica/ModelicaStandardLibrary.git\">https://github.com/modelica/ModelicaStandardLibrary.git</a> repository and submit a <a href=\"https://help.github.com/articles/about-pull-requests/\">Pull Request</a> (PR).
   <ul>
   <li>If the PR is related to a certain issue, reference it by its number like this: #2161.</li>
   <li>Once a pull request is opened, you can discuss and <a href=\"https://help.github.com/articles/about-pull-request-reviews/\">review</a> the potential changes with collaborators and add follow-up commits before the changes are merged into the repository.</li>
   <li>If you have not already signed the Modelica Association Contributor License Agreement (CLA) you need to do so one-time.<br>
   You can sign the CLA electronically using the CLA Assistant service and your GitHub account. There is no need to scan and send any documents by mail.</li>
   </ul></li>
<li>Update your branch with the requested changes. If necessary, merge the latest
   \"master\" branch into your topic branch and solve all merge conflicts in your topic branch.</li>
</ol>

<p>
There are some special guidelines for changes to the maintenance branch.
</p>

<ul>
<li> Every change to the maintenance branch has to get cherry-picked at the \"master\"
         branch (see above), too.</li>
<li> When a new <code>BUGFIX</code> release is due the annotations
     \"version\" and \"versionDate\" need to be updated.<br>
     Example:
         <blockquote><pre>
annotation(version      = \"4.0.1\",
           versionDate  = \"2020-09-29\",
           dateModified = \"2020-09-29 07:40:19Z\",
           revisionId   = \"$F&#8203;ormat:%h %ci$\")
         </pre></blockquote>
     The \"dateModfied\" is optional but might help identify the exact creation time of a release.
     The \"revisionId\" field is a special annotation to identify the exact commit that the released
     version represents.<br>
     Example:
     <blockquote>
        Running the export command \"<code>git archive -o msl.zip v4.0.0</code>\" will
        expand the above \"revisionId\" place holder to something like:
        <blockquote><pre>revisionId = \"c04e23a0d 2020-04-01 12:00:00 +0200$\"</pre></blockquote>
     </blockquote>
     </li>
</ul>

<p>
As a recommendation, a valid bug-fix to the maintenance branch may contain one or
more of the following changes.
</p>

<ul>
<li> Correcting an equation.</li>
<li> Correcting attributes quantity/unit/defaultUnit in a declaration.</li>
<li> Improving/fixing the documentation.</li>
<li> Introducing a new name in the public section of a class
         (model, package, ...) or in any section of a partial class is <strong>not</strong> allowed.
         Since otherwise, a user might use this new name and when storing its model
         and loading it with an older bug-fix version, an error would occur.</li>
<li> Introducing a new name in the protected section of a non-partial
         class should only be done if absolutely necessary to fix a bug.
         The problem is that this might be non-backward compatible,
         because a user might already extend from this class and already using the same name.</li>
</ul>
</html>"));
end VersionManagement;

class Version_4_1_0 "Version 4.1.0 (May 23, 2025)"
  extends Modelica.Icons.ReleaseNotes;

  annotation (Documentation(info="<html>
<p>Version 4.1.0 is backward compatible to version 4.0.0. This means, there is no need to convert user models, because no renaming or moving has been done on the library. Please note: simulation results might be affected by necessary changes and bug fixes that were applied since the 4.0.0 release, see below for more details.</p>
<p>Short overview:</p>
<ul>
<li>17 new components (e.g. Blocks for recording of min and max of a signal)</li>
<li>12 improved components (e.g. tables can now read CSV)</li>
<li>18 potentially non-backwards-compatible changes (especially Constants.inf, Constants.small, Constants.eps)</li>
<li>26 bug fixes, which may cause the simulation results to change for the better</li>
<li>3 models marked as obsolete</li>
<li>This version is based on the recent Modelica language standard version 3.6.</li>
<li>About <a href=\"modelica://Modelica/Resources/Documentation/Version-4.1.0/ResolvedGitHubIssues.html\">560 issues (including 392 pull requests)</a> have been addressed for this release.</li>
</ul>
<p>
The following libraries, that were previously using version Modelica 4.0.0, were tested successfully with version 4.1.0 without any modification, using Dymola 2025x Refresh 1 and/or OpenModelica 1.25.0
(alphabetical list):
</p>
<ul>
<li>AviationSystems 1.6.2</li>
<li>AviationSystems_Demos 1.6.2</li>
<li>Battery 2.8.1</li>
<li>BrushlessDCDrives 1.4.3</li>
<li>Buildings 12.0.0 (LBL)</li>
<li>CATIAMultiBody 2.0 (DS)</li>
<li>ClaRa/ClaRaPlus 1.7.5 (TLK-Thermo)</li>
<li>Claytex 2024.2</li>
<li>ClaytexFluid 2024.2</li>
<li>Cooling 1.5.4</li>
<li>DassaultSystemes 1.14.0</li>
<li>DriveControl</li>
<li>DymolaModels 1.10.0</li>
<li>ElectricPowerSystems 1.7.0</li>
<li>ElectrifiedPowertrains 1.11.0</li>
<li>EMOTH</li>
<li>Engines 2024.2</li>
<li>FlexibleBodies 2.4.0</li>
<li>FluidDynamicsLib 2.18.0 (XRG)</li>
<li>FluidPower 2024.2</li>
<li>FTire 1.3.2</li>
<li>Hydrogen 1.4.2</li>
<li>Modelica_StateGraph2 2.1.0</li>
<li>Modelica_DeviceDrivers 2.1</li>
<li>FlightDynamics 1.0.4</li>
<li>HanserModelica</li>
<li>HumanComfortLib 2.18.0 (XRG)</li>
<li>PhotoVoltaics</li>
<li>PhotoVoltaics_TGM</li>
<li>PlanarMechanics 1.6.0 (DLR)</li>
<li>PneumaticSystems 1.7.2</li>
<li>SDF 0.4.5</li>
<li>TestingLib 1.10.0</li>
<li>ThermalManagementDemos 1.2.1</li>
<li>ThermodynamicsConnector 1.3.0</li>
<li>ThermofluidStream 1.2.0 (DLR)</li>
<li>TIL/TILMedia 2024.1 (TLK-Thermo)</li>
<li>VehicleInterfaces 2.0.1 </li>
<li>VehicleDemos 2024.2</li>
<li>VeSyMA 2024.2</li>
<li>VeSyMA2EPTL 2024.2</li>
<li>Visa2Base 1.17</li>
<li>Visa2Paper 1.17</li>
<li>Visa2Steam 1.17</li>
<li>WindPower 1.1.5</li>
</ul>

<p><br>The following <strong><font color=\"blue\">new components</font></strong> have been added to <strong><font color=\"blue\">existing</font></strong> libraries: </p>
<table cellspacing=\"0\" cellpadding=\"2\" border=\"1\"><tr>
<td colspan=\"2\"><h4>Modelica.Blocks.Logical</h4></td>
</tr>
<tr>
<td>AssertCondition</td>
<td>This block is useful for applying asserts via graphical layer.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Blocks.Math</h4></td>
</tr>
<tr>
<td>Exponentiation</td>
<td>Performs general exponentiation.</td>
</tr>
<tr>
<td>SignalExtrema</td>
<td>This block calculates the <code>min</code> and the <code>max</code> of the input signal <code>u</code> and stores the time at which the last minimum or maximum was reached in the variables <code>t_min</code> and <code>t_max</code> respectively. </td>
</tr>
<tr>
<td>ContinuousSignalExtrema</td>
<td>This block detects positive and negative peaks of differentiable and non-differentiable input signals without sampling.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Electrical.Analog.Lines</h4></td>
</tr>
<tr>
<td>TLine</td>
<td>Lossless transmission line with characteristic impedance <code>Z0</code> and transmission delay <code>TD</code>. </td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Electrical.Analog.Sources</h4></td>
</tr>
<tr>
<td>LightningImpulse</td>
<td>Block that provides the simplified trajectory of an impulse (like the current of lightnings) as one of two approximation functions.</td>
</tr>
<tr>
<td>LightningImpulseCurrent</td>
<td>Lightning impulse current using either a double exponential function or a Heidler function</td>
</tr>
<tr>
<td>LightningImpulseVoltage</td>
<td>Lightning impulse voltage using either a double exponential function or a Heidler function</td>
</tr>
<tr>
<td>DCPowerSupply</td>
<td>This is a simple model of a DC power supply, as used in laboratories. It can only work in one quadrant. </td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Electrical.Machines.Utilities</h4></td>
</tr>
<tr>
<td>RotationalCoupling</td>
<td>Ideal stiff coupling: one device connected to the coupling is turning clockwise (looking at the shaft end), the other device connected to the coupling is turning counter-clockwise (looking at the shaft end). The torque at flange_b has the same magnitude as the torque at flange_a but opposite sign.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Electrical.PowerConverters.DCDC</h4></td>
</tr>
<tr>
<td>ChopperBuckBoost</td>
<td>This is a bidirectional buck / boost - converter with 2 transistors and 2 freewheeling diodes.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Electrical.QuasiStatic.SinglePhase.Basic</h4></td>
</tr>
<tr>
<td>Transformer</td>
<td>Models a quasistatic singlephase transformer using a two-port matrix.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Electrical.QuasiStatic.SinglePhase.Sensors</h4></td>
</tr>
<tr>
<td>CurrentRMSSensor</td>
<td>This sensor determines the continuous root mean square (RMS) value of a single-phase current system.</td>
</tr>
<tr>
<td>VoltageRMSSensor</td>
<td>This sensor determines the continuous root mean square (RMS) value of a single-phase voltage system.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Mechanics.Rotational.Components</h4></td>
</tr>
<tr>
<td>Coupling</td>
<td>This is a model of an ideal stiff coupling (face to face).</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Mechanics.Rotational.Sources</h4></td>
</tr>
<tr>
<td>InverseSpeedDependentTorque</td>
<td>Model of inverse speed-dependent torque.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Mechanics.Translational.Sources</h4></td>
</tr>
<tr>
<td>InverseSpeedDependentForce</td>
<td>Model of inverse speed-dependent force.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Units.SI</h4></td>
</tr>
<tr>
<td>StoichiometricCoefficient</td>
<td>&nbsp;New SI unit type </td>
</tr>
</table>
<p><br><br>The following <strong><font color=\"blue\">existing components</font></strong> have been <strong><font color=\"blue\">improved</font></strong> in a <strong><font color=\"blue\">backward compatible</font></strong> way:</p>
<table cellspacing=\"0\" cellpadding=\"2\" border=\"1\"><tr>
<td colspan=\"2\"><h4>Modelica.Blocks.Sources</h4></td>
</tr>
<tr>
<td>CombiTimeTable</td>
<td>Added support of reading CSV files.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Blocks.Tables</h4></td>
</tr>
<tr>
<td>CombiTable1Ds<br>CombiTable1Dv<br>CombiTable2Ds<br>CombiTable2Dv</td>
<td>Added support of reading CSV files.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Electrical.PowerConverters.DCDC</h4></td>
</tr>
<tr>
<td>HBridge</td>
<td>An enhanced distribution of the fire signals avoids a short circuit on the source, and enables an enhanced pwm algorithm.</td>
</tr>
<tr>
<td>Control.SignalPWM</td>
<td>The reference signal can be chosen between sawtooth and triangle, and the comparison between <code>dutyCycle</code> and reference signal is either applied common or separated for both fire ports.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Mechanics.Rotational.Components</h4></td>
</tr>
<tr>
<td>BearingFriction</td>
<td>The table interpolation in <code>tau_pos</code> utilizes the interpolation based on <a href=\"Modelica.Blocks.Types.ExternalCombiTable1D\">ExternalCombiTable1D</a>.</td>
</tr>
<tr>
<td>LossyGear</td>
<td>The table interpolation in <code>lossTable</code> utilizes the interpolation based on <a href=\"Modelica.Blocks.Types.ExternalCombiTable1D\">ExternalCombiTable1D</a>.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Mechanics.Rotational.Sources</h4></td>
</tr>
<tr>
<td>EddyCurrentTorque</td>
<td>Enhanced with optional influence of variable excitation.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Mechanics.Translational.Components</h4></td>
</tr>
<tr>
<td>SupportFriction</td>
<td>The table interpolation in <code>f_pos</code> utilizes the interpolation based on <a href=\"Modelica.Blocks.Types.ExternalCombiTable1D\">ExternalCombiTable1D</a>.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Mechanics.Translational.Sources</h4></td>
</tr>
<tr>
<td>EddyCurrentForce</td>
<td>Enhanced with optional influence of variable excitation.</td>
</tr>
</table>
<p><br><br>The following <strong><font color=\"blue\">existing components</font></strong> have been <strong><font color=\"blue\">changed</font></strong> in a <strong><font color=\"blue\">non-backward compatible</font></strong> way, even though this is not expected in general to affect models using the library, except in very rare cases:</p>
<table cellspacing=\"0\" cellpadding=\"2\" border=\"1\">
<tr>
<td colspan=\"2\"><h4>Modelica.Blocks</h4></td>
</tr>
<tr>
<td>Discrete.Sampler<br>Discrete.ZeroOrderHold</td>
<td>Fixed the start time of <code>ZeroOrderHold</code> and <code>Sampler</code>. Parameter <code>startTime</code> was implemented, but ignored.</td>
</tr>
<tr>
<td>Continuous.PID</td>
<td>Removed the <code>min</code> attribute of gain in Blocks.Continuous.LimPID</td>
</tr>
<tr>
<td>Math.ContinuousMean</td>
<td>Simplified the mean formula</td>
</tr>
<tr>
<td>Routing.Extractor</td>
<td>The block will now trigger an assert if <code>index</code> is out range, unless <code>allowOutOfRange</code> is set.</td>
</tr>
<tr>
<td>Sources.ContinuousClock</td>
<td>Updated to declare that the output is smooth</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Constants</h4></td>
</tr>
<tr>
<td>inf<br>small<br>eps</td>
<td>Definitions changed to make them consistent with commonly accepted ones, see, e.g. <a href=\"https://en.wikipedia.org/wiki/Machine_epsilon\">Wikipedia</a>. As a consequence, their tool-specific implementations in <code>ModelicaServices</code> may have changed compared to version 4.0.0.<br>Tools may provide a compatibility flag to keep the old values.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Fluid.Vessels</h4></td>
</tr>
<tr>
<td>OpenTank</td>
<td>Assertion for empty tank to prevent singular energy balance</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Magnetic.FundamentalWave.BaseClasses</h4></td>
</tr>
<tr>
<td>Machine</td>
<td>Internal used ports of the optional mechanical housing port and the optional thermal port is made <code>protected</code></td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Magnetic.QuasiStatic.FundamentalWave.BaseClasses</h4></td>
</tr>
<tr>
<td>Machine</td>
<td>Internal used ports of the optional mechanical housing port and the optional thermal port is made <code>protected</code></td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Mechanics.MultiBody</h4></td>
</tr>
<tr>
<td>World</td>
<td>The protected parameters <code>ndim</code>, <code>ndim2</code> and <code>ndim_pointGravity</code> have been removed.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Mechanics.MultiBody.Forces</h4></td>
</tr>
<tr>
<td>Spring</td>
<td>Propagation of lifted parameters in Spring&apos;s lineForce component made final.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Mechanics.Rotational.Components</h4></td>
</tr>
<tr>
<td>Brake<br>Clutch<br>OneWayClutch</td>
<td>The table interpolation in <code>mu_pos</code> utilizes the interpolation based on <a href=\"Modelica.Blocks.Types.ExternalCombiTable1D\">ExternalCombiTable1D</a>.<br>The public variable <code>mu0</code> was changed to a <code>protected final</code> parameter.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Mechanics.Translational.Components</h4></td>
</tr>
<tr>
<td>Brake</td>
<td>The table interpolation in <code>mu_pos</code> utilizes the interpolation based on <a href=\"Modelica.Blocks.Types.ExternalCombiTable1D\">ExternalCombiTable1D</a>.<br>The public variable <code>mu0</code> was changed to a <code>protected final</code> parameter.</td>
</tr>
</table>
<p><br><br>The following <strong><font color=\"blue\">critical errors</font></strong> have been fixed (i.e., errors that can lead to wrong simulation results): </p>
<table cellspacing=\"0\" cellpadding=\"2\" border=\"1\"><tr>
<td colspan=\"2\"><h4>Modelica.Blocks.Tables</h4></td>
</tr>
<tr>
<td>CombiTable2Ds<br>CombiTable2Dv</td>
<td>The derivatives for one-sided extrapolation by constant continuation (i.e., extrapolation=<code>Modelica.Blocks.Types.Extrapolation.HoldLastPoint</code>) returned a constant zero value. This has been corrected.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.ComplexBlocks.ComplexMath</h4></td>
</tr>
<tr>
<td>TransferFunction</td>
<td>Fixed interpretation of coefficients of complex transfer function</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.ComplexBlocks.Sources</h4></td>
</tr>
<tr>
<td>ComplexRampPhasor</td>
<td>Simplify ComplexRampPhasor.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Electrical.Batteries.Utilities</h4></td>
</tr>
<tr>
<td>PulseSeries</td>
<td>Clarified usage of pause between pulses and between pulse series</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Electrical.Polyphase.Basic</h4></td>
</tr>
<tr>
<td>Resistor <br>Conductor<br>VariableResistor<br>VariableConductor</td>
<td>Propagate parameter <code>T</code> in <code>Resistor</code> and <code>Conductor</code></td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Electrical.PowerConverters.DCAC.Control</h4></td>
</tr>
<tr>
<td>SVPWM</td>
<td>Corrected a bug in the equation</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Fluid.Dissipation.PressureLoss.General</h4></td>
</tr>
<tr>
<td>dp_volumeFlowRate_MFLOW</td>
<td>The function now correctly computes the pressure loss in the linear case, i.e., <code>a = 0</code> and <code>b > 0</code>.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Fluid.Fittings.GenericResistances</h4></td>
</tr>
<tr>
<td>VolumeFlowRate</td>
<td>The model now correctly computes the pressure loss in the linear case, i.e., <code>a = 0</code> and <code>b > 0</code>.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Magnetic.FluxTubes.Material.HysteresisTableData</h4></td>
</tr>
<tr>
<td>M400_50A</td>
<td>The value of parameter <code>sigma</code> has been corrected.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Magnetic.FluxTubes.Shapes.FixedShape</h4></td>
</tr>
<tr>
<td>HollowCylinderAxialFlux<br>HollowCylinderRadialFlux</td>
<td>Usage of parameter <code>alpha</code> (central angle) instead of pi without any choice<br>Usage of parameter <code>alpha</code> (central angle) instead of pi without any choice</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.FixedShape</h4></td>
</tr>
<tr>
<td>HollowCylinderAxialFlux<br>HollowCylinderRadialFlux</td>
<td>Propagated the angle <code>alpha</code> also in the calculation of <code>A</code> in <code>HollowCylinderRadialFlux</code></td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Mechanics.MultiBody.Frames.Quaternions</h4></td>
</tr>
<tr>
<td>from_T</td>
<td>The calculation was not stable. This has been corrected.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Mechanics.MultiBody.Sensors.Internal</h4></td>
</tr>
<tr>
<td>BasicAbsoluteAngularVelocity</td>
<td>Corrected the error with <code>frame_resolve</code> math in <code>BasicAbsoluteAngularVelocity</code> sensor</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.LossFactorData</h4></td>
</tr>
<tr>
<td>sharpEdgedOrifice</td>
<td>Bug in <code>SharpEdgedOrifice</code> for Loss factors resolved</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Fluid.Utilities</h4></td>
</tr>
<tr>
<td>regFun3</td>
<td>The function produced wrong results in horizontal wall friction models. This is fixed.</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Media.Air.MoistAir.Utilities</h4></td>
</tr>
<tr>
<td>spliceFunction<br>spliceFunction_der</td>
<td>Refactor <code>spliceFunction_der</code></td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Media.Air.ReferenceMoistAir.Utilities</h4></td>
</tr>
<tr>
<td>pd_pTX_der</td>
<td>Corrected the error in the function for computation of partial pressure derivative of steam</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Media.R134a.R134a_ph</h4></td>
</tr>
<tr>
<td>dofpT</td>
<td>Changed code to ensure convergence to correct values throughout the entire p,T validity range</td>
</tr>
<tr>
<td colspan=\"2\"><h4>Modelica.Math</h4></td>
</tr>
<tr>
<td>isPowerOf2</td>
<td>Corrected the issue of wrong results for large inputs</td>
</tr>
</table>
<p><br><br>The following models were declared as <strong><font color=\"blue\">obsolete</font></strong>, thus to be preferably replaced with better, more general ones:</p>
<table cellspacing=\"0\" cellpadding=\"2\" border=\"1\"><tr>
<td colspan=\"2\"><h4>Modelica.Electrical.Analog.Lines</h4></td>
</tr>
<tr>
<td>TLine1<br>TLine2<br>Tline3</td>
<td>Replaced by generic <code>Tline</code> model with appropriate parametrization.</td>
</tr>
</table>

</html>"));
end Version_4_1_0;

class Version_4_0_0 "Version 4.0.0 (June 4, 2020)"
  extends Modelica.Icons.ReleaseNotes;

  annotation (Documentation(info="<html>
<p>
Version 4.0.0 is <strong>not</strong> backward compatible to previous versions.
A tested conversion script is provided to transform models and libraries of previous versions 3.x.y to the new version.
Short Overview:
</p>
<ul>
<li>About <a href=\"modelica://Modelica/Resources/Documentation/Version-4.0.0/ResolvedGitHubIssues.html\">649 issues (including 432 pull requests)</a> have been addressed for this release.</li>
<li>This version is based on the recent Modelica language standard version 3.4.</li>
<li>The library version (i.e., \"4.0.0\") follows semantic versioning using the convention <code>MAJOR.MINOR.BUGFIX</code>
(see <a href=\"modelica://Modelica.UsersGuide.ReleaseNotes.VersionManagement\">Version Management</a> for details)
 and was decoupled from the version of the utilized version of the Modelica language standard.</li>
<li>Obsolete classes of previous versions 3.x.y have been replaced.</li>
<li>Obsolete classes, that could not be automatically converted to alternative implementations, have been moved to library ObsoleteModelica4.</li>
<li>Major emphasis was put on improvements of the overall quality with respect to class naming and package structuring, conventions and style guide-lines, icons, documentation style and example models. The following sublibraries have been renamed.
  <ol>
    <li>Modelica.SIunits &rarr; Modelica.Units.{SI, NonSI, Conversions}</li>
    <li>Modelica.Electrical.MultiPhase &rarr; Modelica.Electrical.Polyphase</li>
    <li>Modelica.Electrical.QuasiStationary &rarr; Modelica.Electrical.QuasiStatic</li>
  </ol></li>
<li>The licenses of the utilized open-source third-party software components as well as the BSD 3-clause license of the Modelica Standard Library itself are available as separate <a href=\"modelica://Modelica/Resources/Licenses\">resources</a>.</li>
</ul>

<p>
The exact difference between package Modelica version 4.0.0 and version 3.2.3 is
summarized in a <a href=\"modelica://Modelica/Resources/Documentation/Version-4.0.0/DifferencesTo323.html\">comparison table</a>.
</p>

<p>
The following <font color=\"blue\"><strong>Modelica packages</strong></font> have been tested that they work together with this release of package Modelica
(alphabetical list).
Hereby simulation results of the listed packages have been produced with package Modelica version 3.2.3 and
compared with the simulation results produced with version 4.0.0 Beta.1. The tests have been performed with Dymola 2020/2020x/2021:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
  <tr>
    <th>Library</th>
    <th>Version</th>
    <th>Library provider</th>
  </tr>
  <tr>
    <td><a href=\"https://github.com/lbl-srg/modelica-buildings/issues/1789\">Buildings</a></td>
    <td>&nbsp;&gt;&nbsp;6.0.0</td>
    <td>LBNL</td>
  </tr>
  <tr>
    <td>BrushlessDCDrives</td>
    <td>1.1.1</td>
    <td>Dassault Syst&egrave;mes</td>
  </tr>
  <tr>
    <td>Clara</td>
    <td>1.5.0</td>
    <td>XRG Simulation GmbH and TLK-Thermo GmbH</td>
  </tr>
  <tr>
    <td>ClaraPlus</td>
    <td>1.3.0</td>
    <td>XRG Simulation GmbH and TLK-Thermo GmbH</td>
  </tr>
  <tr>
    <td>DriveControl</td>
    <td>4.0.0</td>
    <td>Anton Haumer</td>
  </tr>
  <tr>
    <td>DymolaModels</td>
    <td>1.1</td>
    <td>Dassault Syst&egrave;mes</td>
  </tr>
  <tr>
    <td>EDrives</td>
    <td>1.0.1</td>
    <td>Anton Haumer and Christian Kral</td>
  </tr>
  <tr>
    <td>ElectricalMachines</td>
    <td>0.9.1</td>
    <td>Anton Haumer</td>
  </tr>
  <tr>
    <td>ElectricPowerSystems</td>
    <td>1.3.1</td>
    <td>Dassault Syst&egrave;mes</td>
  </tr>
  <tr>
    <td>ElectrifiedPowertrains</td>
    <td>1.3.2</td>
    <td>Dassault Syst&egrave;mes</td>
  </tr>
  <tr>
    <td>ElectroMechanicalDrives</td>
    <td>2.2.0</td>
    <td>Christian Kral</td>
  </tr>
  <tr>
    <td>EMOTH</td>
    <td>1.4.1</td>
    <td>Anton Haumer</td>
  </tr>
  <tr>
    <td>HanserModelica</td>
    <td>1.1.0</td>
    <td>Christian Kral</td>
  </tr>
  <tr>
    <td>IBPSA</td>
    <td>&nbsp;&gt;&nbsp;3.0.0</td>
    <td>IBPSA Project 1</td>
  </tr>
  <tr>
    <td>KeywordIO</td>
    <td>0.9.0</td>
    <td>Christian Kral</td>
  </tr>
  <tr>
    <td>Modelica_DeviceDrivers</td>
    <td>1.8.1</td>
    <td>DLR, ESI ITI, and Linköping University (PELAB)</td>
  </tr>
  <tr>
    <td>Optimization</td>
    <td>2.2.4</td>
    <td>DLR</td>
  </tr>
  <tr>
    <td>PhotoVoltaics</td>
    <td>1.6.0</td>
    <td>Christian Kral</td>
  </tr>
  <tr>
    <td>PlanarMechanics</td>
    <td>1.4.1</td>
    <td>Dirk Zimmer</td>
  </tr>
  <tr>
    <td>Testing</td>
    <td>1.3</td>
    <td>Dassault Syst&egrave;mes</td>
  </tr>
  <tr>
    <td>ThermalSystems</td>
    <td>1.6.0</td>
    <td>TLK-Thermo GmbH</td>
  </tr>
  <tr>
    <td>TIL</td>
    <td>3.9.0</td>
    <td>TLK-Thermo GmbH</td>
  </tr>
  <tr>
    <td>TILMedia</td>
    <td>3.9.0</td>
    <td>TLK-Thermo GmbH</td>
  </tr>
  <tr>
    <td>TSMedia</td>
    <td>1.6.0</td>
    <td>TLK-Thermo GmbH</td>
  </tr>
  <tr>
    <td>VehicleInterfaces</td>
    <td>1.2.5</td>
    <td>Modelica Association</td>
  </tr>
  <tr>
    <td>WindPowerPlants</td>
    <td>1.2.0</td>
    <td>Christian Kral</td>
  </tr>
</table>

<p><br>
The following <font color=\"blue\"><strong>new libraries</strong></font> have been added:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tr><td><a href=\"modelica://Modelica.Clocked\">Modelica.Clocked</a></td>
    <td>This library can be used to precisely define and synchronize sampled data systems with different sampling rates.<br>The library previously was
    available as separate package <a href=\"https://github.com/modelica/Modelica_Synchronous\">Modelica_Synchronous</a>.
    (This library was developed by DLR in close cooperation with Dassault Syst&egrave;mes Lund.)
    </td></tr>
<tr><td><a href=\"modelica://Modelica.Electrical.Batteries\">Modelica.Electrical.Batteries</a></td>
    <td>This library offers simple battery models.<br>
    (This library was developed by Anton Haumer and Christian Kral.)
    </td></tr>
</table>

<p><br>
The following <font color=\"blue\"><strong>new components</strong></font> have been added to <font color=\"blue\"><strong>existing</strong></font> libraries:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Sources</strong></td></tr>
<tr><td>SineVariableFrequencyAndAmplitude<br>CosineVariableFrequencyAndAmplitude</td>
    <td>Added signal sources with variable amplitude and frequency; sine and cosine waveforms are provided.</td></tr>
<tr><td>Sinc</td>
    <td>Added signal source of <code> amplitude*sin(2*&pi;*f*t)/(2*&pi;*f*t)</code>.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Sources</strong></td></tr>
<tr><td>SineVoltageVariableFrequencyAndAmplitude<br>CosineVoltageVariableFrequencyAndAmplitude<br>SineCurrentVariableFrequencyAndAmplitude<br>CosineCurrentVariableFrequencyAndAmplitude</td>
    <td>Added voltage and current sources with variable amplitude and frequency; sine and cosine waveforms are provided.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Machines.Sensors</strong></td></tr>
<tr><td>SinCosResolver</td>
    <td>Added resolver with two sine and two cosine tracks to be used in drive control applications.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Machines.Utilities</strong></td></tr>
<tr><td>SwitchYDwithArc</td>
    <td>Added wye delta switch with arc model and time delay between the two switching events.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.PowerConverters</strong></td></tr>
<tr><td>ACAC</td>
    <td>Added single-phase and polyphase triac models (AC/AC converters).</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Magnetic.FluxTubes.Shapes.FixedShape</strong></td></tr>
<tr><td>HollowCylinderCircumferentialFlux<br>Toroid</td>
    <td>Added circumferential flux models of hollow cylinder and toroid with circular cross section.</td></tr>
<tr><td colspan=\"2\"><strong>Magnetic.QuasiStatic.FluxTubes.Shapes.FixedShape</strong></td></tr>
<tr><td>HollowCylinderCircumferentialFlux<br>Toroid</td>
    <td>Added circumferential flux models of hollow cylinder and toroid with circular cross section.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.Visualizers.Advanced</strong></td></tr>
<tr><td>Vector</td>
    <td>Added 3-dimensional animation for visualization of vector quantities (force, torque, etc.)</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Mechanics.Translational.Components</strong></td></tr>
<tr><td>RollingResistance</td>
    <td>Added resistance of a rolling wheel incorporating the inclination and rolling resistance coefficient.</td></tr>
<tr><td>Vehicle</td>
    <td>Added simple vehicle model considering mass and inertia, drag and rolling resistance, inclination resistance.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Math</strong></td></tr>
<tr><td>BooleanVectors.andTrue</td>
    <td>Similar to <code>allTrue</code>, but return <code>true</code> on empty input vector.</td></tr>
<tr><td>Matrices.LAPACK.dgeqp3</td>
    <td>Compute the QR factorization with column pivoting of square or rectangular matrix.</td></tr>
<tr><td>Random.Utilities.automaticLocalSeed</td>
    <td>Create an automatic local seed from the instance name.</td></tr>
</table>

<p><br>
The following <font color=\"blue\"><strong>existing components</strong></font> have been <font color=\"blue\"><strong>improved</strong></font> in a <font color=\"blue\"><strong>backward compatible</strong></font> way:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Sources</strong></td></tr>
<tr><td>CombiTimeTable</td>
    <td>Added second derivative and modified Akima interpolation.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Tables</strong></td></tr>
<tr><td>CombiTable1Ds<br>CombiTable1Dv</td>
    <td>Added second derivatives and modified Akima interpolation.</td></tr>
<tr><td>CombiTable2Ds<br>CombiTable2Dv</td>
    <td>Added second derivatives.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Basic</strong></td></tr>
<tr><td>Gyrator</td>
    <td>Serves as generalized gyrator model as IdealGyrator was removed.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Ideal</strong></td></tr>
<tr><td>IdealizedOpAmpLimited</td>
    <td>Added homotopy to operational amplifier.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Semiconductors</strong></td></tr>
<tr><td>NPN<br>PNP</td>
    <td>Added optional substrate connector.</td></tr>
</table>

<p><br>
The following <font color=\"blue\"><strong>existing components</strong></font> have been <font color=\"blue\"><strong>changed</strong></font> in a <font color=\"blue\"><strong>non-backward compatible</strong></font> way:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Modelica.Blocks</strong></td></tr>
<tr><td>Nonlinear.Limiter<br>Nonlinear.VariableLimiter</td>
    <td>The superfluous parameter <code>limitsAtInit</code> has been removed.</td></tr>
<tr><td>Continuous.PID</td>
    <td>The initialization option <code>initType</code>&nbsp;=&nbsp;<code>InitPID.DoNotUse_InitialIntegratorState</code> to only initialize the integrator state has been removed. This option has been converted to both initialize the integrator state and the derivative state, i.e., <code>initType</code>&nbsp;=&nbsp;<code>Init.InitialState</code>.</td></tr>
<tr><td>Continuous.LimPID</td>
    <td>The superfluous parameter <code>limitsAtInit</code> has been removed.<br>The initialization option <code>initType</code>&nbsp;=&nbsp;<code>InitPID.DoNotUse_InitialIntegratorState</code> to only initialize the integrator state has been removed. This option has been converted to both initialize the integrator state and the derivative state, i.e., <code>initType</code>&nbsp;=&nbsp;<code>Init.InitialState</code>.</td></tr>
<tr><td>Nonlinear.DeadZone</td>
    <td>The superfluous parameter <code>deadZoneAtInit</code> has been removed.</td></tr>
<tr><td>Interfaces.PartialNoise<br>Noise.UniformNoise<br>Noise.NormalNoise<br>Noise.TruncatedNormalNoise<br>Noise.BandLimitedWhiteNoise</td>
    <td>As a side-effect of the updated computation in Modelica.Math.Random.Utilities.automaticLocalSeed the <code>localSeed</code> parameter is computed differently if <code>useAutomaticLocalSeed</code> is set to true.</td></tr>
<tr><td>Types.InitPID</td>
    <td>The enumeration type has been converted to <code>Types.Init</code> with exception of the alternative <code>InitPID.DoNotUse_InitialIntegratorState</code>, that was converted to <code>Init.InitialState</code> leading to a different initialization behaviour.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Machines.Utilities</strong></td></tr>
<tr><td>SwitchYD</td>
    <td>The <a href=\"modelica://Modelica.Electrical.Polyphase.Ideal.IdealCommutingSwitch\">IdealCommutingSwitch</a> is replaced by an <a href=\"modelica://Modelica.Electrical.Polyphase.Ideal.IdealOpeningSwitch\">IdealOpeningSwitch</a> and an <a href=\"modelica://Modelica.Electrical.Polyphase.Ideal.IdealClosingSwitch\">IdealClosingSwitch</a> to allow a time delay between the two switching actions.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Spice3</strong></td></tr>
<tr><td>Internal.MOS2<br>Semiconductors.M_NMOS2<br>Semiconductors.M_PMOS2</td>
    <td>The final parameter <code>vp</code> has been removed.<br>The obsolete variables <code>cc_obsolete</code>, <code>icqmGB</code>, <code>icqmGS</code>, <code>icqmGD</code>, <code>MOScapgd</code>, <code>MOScapgs</code>, <code>MOScapgb</code>, <code>qm</code> and <code>vDS</code> have been removed.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Magnetic.QuasiStatic.FundamentalWave.Utilities</strong></td></tr>
<tr><td>SwitchYD</td>
    <td>The <a href=\"modelica://Modelica.Electrical.QuasiStatic.Polyphase.Ideal.IdealCommutingSwitch\">IdealCommutingSwitch</a> is replaced by an <a href=\"modelica://Modelica.Electrical.QuasiStatic.Polyphase.Ideal.IdealOpeningSwitch\">IdealOpeningSwitch</a> and an <a href=\"modelica://Modelica.Electrical.QuasiStatic.Polyphase.Ideal.IdealClosingSwitch\">IdealClosingSwitch</a> to allow a time delay between the two switching actions.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.Forces</strong></td></tr>
<tr><td>WorldForce</td>
    <td>The parameters <code>diameter</code> and <code>N_to_m</code> have been removed.</td></tr>
<tr><td>WorldTorque</td>
    <td>The parameters <code>diameter</code> and <code>Nm_to_m</code> have been removed.</td></tr>
<tr><td>WorldForceAndTorque</td>
    <td>The parameters <code>forceDiameter</code>, <code>torqueDiameter</code>, <code>N_to_m</code>, and <code>Nm_to_m</code> have been removed.</td></tr>
<tr><td>Force</td>
    <td>The parameter <code>N_to_m</code> has been removed.</td></tr>
<tr><td>Torque</td>
    <td>The parameter <code>Nm_to_m</code> has been removed.</td></tr>
<tr><td>ForceAndTorque</td>
    <td>The parameters <code>N_to_m</code> and <code>Nm_to_m</code> have been removed.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.Joints</strong></td></tr>
<tr><td>Prismatic</td>
    <td>The superfluous constant <code>s_offset</code> has been removed.</td></tr>
<tr><td>Revolute</td>
    <td>The superfluous constant <code>phi_offset</code> has been removed.</td></tr>
<tr><td>FreeMotion<br>FreeMotionScalarInit</td>
    <td>The parameter <code>arrowDiameter</code> has been removed.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.Parts</strong></td></tr>
<tr><td>Body</td>
    <td>The superfluous parameter <code>z_a_start</code> has been removed.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.Sensors</strong></td></tr>
<tr><td>AbsoluteSensor<br>RelativeSensor<br>Distance</td>
    <td>The parameter <code>arrowDiameter</code> has been removed.</td></tr>
<tr><td>CutForce</td>
    <td>The parameters <code>forceDiameter</code> and <code>N_to_m</code> have been removed.</td></tr>
<tr><td>CutForce</td>
    <td>The parameters <code>torqueDiameter</code> and <code>Nm_to_m</code> have been removed.</td></tr>
<tr><td>CutForceAndTorque</td>
    <td>The parameters <code>forceDiameter</code>, <code>torqueDiameter</code>, <code>N_to_m</code>, and <code>Nm_to_m</code> have been removed.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.Visualizers</strong></td></tr>
<tr><td>Advanced.Arrow<br>Advanced.DoubleArrow<br>FixedArrow<br>SignalArrow</td>
    <td>The parameter <code>diameter</code> has been removed.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Fluid.Machines</strong></td></tr>
<tr><td>PartialPump</td>
    <td>The superfluous parameter <code>show_NPSHa</code> has been removed.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Thermal.HeatTransfer</strong></td></tr>
<tr><td>Fahrenheit.FromKelvin<br>Rankine.FromKelvin<br>Rankine.ToKelvin</td>
    <td>The superfluous parameter <code>n</code> has been removed.</td></tr>
</table>

<p><br>
The following <font color=\"red\"><strong>critical errors</strong></font> have been fixed (i.e., errors
that can lead to wrong simulation results):
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Math</strong></td></tr>
<tr><td>Pythagoras</td>
    <td>The case with negative <code>y2</code> was not correctly considered if <code>u1IsHypotenuse</code> is <code>true</code>. This has been corrected.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Semiconductors</strong></td></tr>
<tr><td>Diode</td>
    <td>Fixed unit error in current equations.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Spice3.Additionals</strong></td></tr>
<tr><td>poly</td>
    <td>The case with one coefficient and one variable was not correctly considered. This has been corrected.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Fluid.Dissipation.PressureLoss.General</strong></td></tr>
<tr><td>dp_volumeFlowRate_DP<br>dp_volumeFlowRate_MFLOW</td>
    <td>The mass flow rate was not correctly computed if the pressure drop is a linear function of the volume flow rate. This has been corrected.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Media.Air.MoistAir</strong></td></tr>
<tr><td>density_derX<br>s_pTX<br>s_pTX_der</td>
    <td>The calculation was wrong. This has been corrected.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Media.Air.ReferenceAir.Air_Base</strong></td></tr>
<tr><td>BaseProperties</td>
    <td>The unit of the specific gas constant <code>R_s</code> was not correctly considered. This has been corrected.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Media.IdealGases.Common.Functions</strong></td></tr>
<tr><td>s0_Tlow_der</td>
    <td>The calculation was wrong. This has been corrected.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Media.IdealGases.Common.MixtureGasNasa</strong></td></tr>
<tr><td>T_hX</td>
    <td>The function inputs <code>exclEnthForm</code>, <code>refChoice</code> and <code>h_off</code> were not considered. This has been corrected.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Media.Incompressible.TableBased</strong></td></tr>
<tr><td>T_ph</td>
    <td>The pressure negligence was not considered. This has been corrected.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Media.R134a.R134a_ph</strong></td></tr>
<tr><td>setState_pTX</td>
    <td>Only applicable in one-phase regime: The Newton iteration for the calculation of the density may possibly converge to the wrong root. This has been improved.</td></tr>
<tr><td>setState_dTX<br>setState_psX</td>
    <td>The calculation was wrong in two-phase regime. This has been corrected.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Utilities.System</strong></td></tr>
<tr><td>getTime</td>
    <td>The month and year was only correctly returned if the implementing source file (ModelicaInternal.c) was compiled for Windows OS. This has been corrected.</td></tr>
</table>
</html>"));
end Version_4_0_0;

class Version_3_2_3 "Version 3.2.3 (January 23, 2019)"
  extends Modelica.Icons.ReleaseNotes;

 annotation (Documentation(info="<html>
<p>
Version 3.2.3 is backward compatible to version 3.2.2, that is models developed with
versions 3.0, 3.0.1, 3.1, 3.2, 3.2.1 or 3.2.2 will work without any changes also with version 3.2.3.
This version is a \"clean-up\" with major emphasis on quality improvement and
tool compatibility. The goal is that all
<a href=\"https://www.modelica.org/tools\">Modelica tools</a> will support this package
and will interpret it in the same way. Short Overview:
</p>

<ul>
<li>About <a href=\"modelica://Modelica/Resources/Documentation/Version-3.2.3/ResolvedGitHubIssues.html\">557 issues (including pull requests)</a>
    have been addressed for this release.</li>
<li><strong>94</strong> component models and blocks, <strong>36</strong> example models and <strong>9</strong> functions are newly included.</li>
<li>The license has been changed to BSD 3-clause, visit: <a href=\"https://modelica.org/licenses/modelica-3-clause-bsd\">https://modelica.org/licenses/modelica-3-clause-bsd</a>.</li>
</ul>

<p>
The exact difference between package Modelica version 3.2.3 and version 3.2.2 is
summarized in a <a href=\"modelica://Modelica/Resources/Documentation/Version-3.2.3/DifferencesTo322.html\">comparison table</a>.
</p>

<p><br>
The following <font color=\"blue\"><strong>new libraries</strong></font> have been added:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tr><td><a href=\"modelica://Modelica.Magnetic.QuasiStatic.FluxTubes\">Modelica.Magnetic.QuasiStatic.FluxTubes</a></td>
    <td>
    This library provides models for the investigation of quasi-static electromagnetic devices with lumped magnetic networks
    in a comparable way as <a href=\"modelica://Modelica.Magnetic.FluxTubes\">Modelica.Magnetic.FluxTubes</a>.<br>
    (This library was developed by Christian Kral.)
    </td></tr>
<tr><td><a href=\"modelica://Modelica.Electrical.Machines.Examples.ControlledDCDrives\">Modelica.Electrical.Machines.Examples.ControlledDCDrives</a></td>
    <td>
    This library demonstrates the control of a permanent magnet dc machine: current control, speed control and position control
    along with the necessary components in sublibrary Utilities.<br>
    (This library was developed by Anton Haumer.)
    </td></tr>
</table>

<p><br>
The following <font color=\"blue\"><strong>new components</strong></font> have been added
to <font color=\"blue\"><strong>existing</strong></font> libraries:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Interfaces.Adaptors</strong></td></tr>
<tr><td width=\"150\">FlowToPotentialAdaptor<br>PotentialToFlowAdaptor</td>
    <td> Partial adaptors for generation of FMUs, optionally taking first and second derivative into account,
         for consistent components in various domains.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Math</strong></td></tr>
<tr><td width=\"150\">Power</td>
    <td>Computes the power of the input signal.</td></tr>
<tr><td width=\"150\">WrapAngle</td>
    <td> Wraps the angle signal at the input to the interval ]-&pi;, &pi;] or [0, 2&pi;[.</td></tr>
<tr><td width=\"150\">Pythagoras</td>
    <td> This block determines the hypotenuse from the legs or one leg from the hypotenuse and the other leg.</td></tr>
<tr><td width=\"150\">TotalHarmonicDistortion</td>
    <td> This block calculates THD of the signal at the input.</td></tr>
<tr><td width=\"150\">RealFFT</td>
    <td> This block samples the input and calculates the FFT, writing the result to a mat file when the simulation terminates.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Routing</strong></td></tr>
<tr><td width=\"150\">Multiplex</td>
    <td>Multiplexer block for <em>arbitrary</em> number of input signals</td></tr>
<tr><td width=\"150\">DeMultiplex</td>
    <td>Demultiplexer block for <em>arbitrary</em> number of output signals</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Tables</strong></td></tr>
<tr><td width=\"150\">CombiTable2Dv</td>
    <td>Variant of CombiTable2D (table look-up in two dimensions) with vector inputs and vector output</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.ComplexBlocks.Routing</strong></td></tr>
<tr><td width=\"150\">Replicator<br>ExtractSignal<br>Extractor<br>ComplexPassThrough</td>
    <td> Complex implementations analogous to the real implementations.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.ComplexBlocks.ComplexMath</strong></td></tr>
<tr><td width=\"150\">Bode</td>
    <td> Determine variables of a Bode diagram.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.ComplexBlocks.Sources</strong></td></tr>
<tr><td width=\"150\">RampPhasor</td>
    <td> A source of a phasor with constant angle and ramped amplitude.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Basic</strong></td></tr>
<tr><td width=\"150\">GeneralCurrentToVoltageAdaptor<br>GeneralVoltageToCurrentAdaptor</td>
    <td> Adaptors for the generation of FMUs, optionally taking first and second derivative into account.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Sensors</strong></td></tr>
<tr><td width=\"150\">MultiSensor</td>
    <td> Measures voltage, current and power simultaneously.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Polyphase.Sensors</strong></td></tr>
<tr><td width=\"150\">MultiSensor</td>
    <td> Measures voltage, current and active power for each phase as well as total power simultaneously.</td></tr>
<tr><td width=\"150\">AronSensor</td>
    <td> Measures active power for a three-phase system by two single-phase power sensors in an Aron circuit.</td></tr>
<tr><td width=\"150\">ReactivePowerSensor</td>
    <td> Measures reactive power for a three-phase system.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Machines.Examples</strong></td></tr>
<tr><td width=\"150\">SMEE_DOL</td>
    <td> Electrically excited synchronous machine, starting direct on line via the damper cage,
         synchronised by increasing excitation voltage.</td></tr>
<tr><td width=\"150\">SMR_DOL</td>
    <td> Synchronous reluctance machine, starting direct on line via the damper cage,
         synchronised when reaching synchronous speed.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Machines.Sensors</strong></td></tr>
<tr><td width=\"150\">HallSensor</td>
    <td> Simple model of a hall sensor, measuring the angle aligned with the orientation of phase 1.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.PowerConverters.DCAC.Control</strong></td></tr>
<tr><td width=\"150\">PWM<br>SVPWM<br>IntersectivePWM</td>
    <td> Standard three-phase pwm algorithms: space vector and intersective.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.PowerConverters.DCDC</strong></td></tr>
<tr><td width=\"150\">ChopperStepUp</td>
    <td> Step up chopper (boost converter) model.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.QuasiStatic.SinglePhase.Sensors</strong></td></tr>
<tr><td width=\"150\">MultiSensor</td>
    <td> Measures voltage, current and apparent power simultaneously.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.QuasiStatic.Polyphase.Sensors</strong></td></tr>
<tr><td width=\"150\">MultiSensor</td>
    <td> Measures voltage, current and apparent power for m phases as well as total apparent power simultaneously.</td></tr>
<tr><td width=\"150\">AronSensor</td>
    <td> Measures active power for a three-phase system by two single-phase power sensors in an Aron circuit.</td></tr>
<tr><td width=\"150\">ReactivePowerSensor</td>
    <td> Measures reactive power for a three-phase system.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.QuasiStatic.{SinglePhase, Polyphase}.Sources</strong></td></tr>
<tr><td width=\"150\">FrequencySweepVoltageSource<br>FrequencySweepCurrentSource</td>
    <td> Voltage source and current source with integrated frequency sweep.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody</strong></td></tr>
<tr><td width=\"150\">Visualizers.Rectangle</td>
    <td>A planar rectangular surface.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Mechanics.Rotational.Components</strong></td></tr>
<tr><td width=\"150\">GeneralAngleToTorqueAdaptor<br>GeneralTorqueToAngleAdaptor</td>
    <td> Adaptors for the generation of FMUs, optionally taking first and second derivative into account.<br>
         Note: These adaptors give the same results as:<br>
         AngleToTorqueAdaptor<br>TorqueToAngleAdaptor<br>
         but extend from <a href=\"modelica://Modelica.Blocks.Interfaces.Adaptors\">Modelica.Blocks.Interfaces.Adaptors</a>
         like adaptors in other domains.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Mechanics.Rotational.Sources</strong></td></tr>
<tr><td width=\"150\">EddyCurrentTorque</td>
    <td> Rotational eddy current brake.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Mechanics.Translational.Components</strong></td></tr>
<tr><td width=\"150\">GeneralForceToPositionAdaptor<br>GeneralPositionToForceAdaptor</td>
    <td> Adaptors for the generation of FMUs, optionally taking first and second derivative into account.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Mechanics.Translational.Sources</strong></td></tr>
<tr><td width=\"150\">EddyCurrentForce</td>
    <td> Translational eddy current brake.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Magnetic.FundamentalWave.Examples</strong></td></tr>
<tr><td width=\"150\"> </td>
    <td> A lot of new test examples for fundamental wave machines.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Magnetic.QuasiStatic.FundamentalWave.Sensors</strong></td></tr>
<tr><td width=\"150\">RotorDisplacementAngle</td>
    <td> Measures the rotor displacement angle of a quasi-static machine.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Thermal.HeatTransfer.Components</strong></td></tr>
<tr><td width=\"150\">GeneralHeatFlowToTemperatureAdaptor<br>GeneralTemperatureToHeatFlowAdaptor</td>
    <td> Adaptors for the generation of FMUs, optionally taking first derivative into account.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Thermal.FluidHeatFlow.Examples</strong></td></tr>
<tr><td width=\"150\">WaterPump<br>TestOpenTank<br>TwoTanks<br>TestCylinder</td>
    <td> New examples testing and demonstrating the new resp. enhanced components.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Thermal.FluidHeatFlow.Components</strong></td></tr>
<tr><td width=\"150\">Pipe</td>
    <td> A pipe model with optional heatPort which replaces the isolatedPipe and the heatedPipe.</td></tr>
<tr><td width=\"150\">OpenTank</td>
    <td> A simple model of an open tank.</td></tr>
<tr><td width=\"150\">Cylinder</td>
    <td> A simple model of a piston/cylinder with translational flange.</td></tr>
<tr><td width=\"150\">OneWayValve</td>
    <td> A simple one way valve model (comparable to an electrical ideal diode)</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Thermal.FluidHeatFlow.Media</strong></td></tr>
<tr><td width=\"150\">Water_10degC<br>Water_90degC<br>Glycol20_20degC<br>Glycol50_20degC<br>MineralOil</td>
    <td> Several new records defining media properties.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Thermal.FluidHeatFlow.Interfaces</strong></td></tr>
<tr><td width=\"150\">SinglePortLeft</td>
    <td> Replaces the (now obsolete) partial model Ambient and is also used for Sources.AbsolutePressure.</td></tr>
<tr><td width=\"150\">SinglePortBottom</td>
    <td> Same as SinglePortLeft but with the flowPort at the bottom; used for the new Components.OpenTank model.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Constants</strong></td></tr>
<tr><td width=\"150\">q</td>
    <td> The elementary charge of an electron.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Icons</strong></td></tr>
<tr><td width=\"150\">FunctionsPackage</td>
    <td> This icon indicates a package that contains functions.</td></tr>
<tr><td width=\"150\">RecordPackage</td>
    <td> This icon indicates a package that contains records.</td></tr>
</table>

<p><br>
The following <font color=\"blue\"><strong>existing components</strong></font>
have been marked as <font color=\"blue\"><strong>obsolete</strong></font> and will be
<font color=\"blue\"><strong>removed</strong></font> in a future release:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Interfaces.Adaptors</strong></td></tr>
<tr><td>SendReal<br>SendBoolean<br>SendInteger<br>ReceiveReal<br>ReceiveBoolean<br>ReceiveInteger</td>
    <td>Use expandable connectors instead.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.StateGraph.Temporary</strong></td></tr>
<tr><td>SetRealParameter</td>
    <td>Use parameter Real instead.</td></tr>
<tr><td>anyTrue</td>
    <td>Use Modelica.Math.BooleanVectors.anyTrue instead.</td></tr>
<tr><td>allTrue</td>
    <td>Use Modelica.Math.BooleanVectors.allTrue instead instead.</td></tr>
<tr><td>RadioButton</td>
    <td>Use future model from Modelica.Blocks.Interaction instead.</td></tr>
<tr><td>NumericValue</td>
    <td>Use Modelica.Blocks.Interaction.Show.RealValue instead.</td></tr>
<tr><td>IndicatorLamp</td>
    <td>Use Modelica.Blocks.Interaction.Show.BooleanValue instead.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Digital.Converters</strong></td></tr>
<tr><td>LogicToXO1<br>LogicToXO1Z</td>
    <td>Use LogicToX01 or LogicToX01Z instead.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Machines</strong></td></tr>
<tr><td>BasicMachines.Components.BasicTransformer</td>
    <td>Use Interfaces.PartialBasicTransformer instead.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Spice3.Internal</strong></td></tr>
<tr><td>BJT</td>
    <td>Use BJT2 instead.</td></tr>
<tr><td>Bjt3.*</td>
    <td>Use revised classes instead.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody</strong></td></tr>
<tr><td>Examples.Loops.Utilities.GasForce</td>
    <td>Use Examples.Loops.Utilities.GasForce2 instead.</td></tr>
<tr><td>Sensors.TansformAbsoluteVector<br>Sensors.TansformRelativeVector</td>
    <td>Use Sensors.TransformAbsoluteVector or Sensors.TransformRelativeVector instead.</td></tr>
<tr><td>Visualizers.Ground</td>
    <td>Use ground plane visualization of World or Visualizers.Rectangle instead.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Fluid.Icons</strong></td></tr>
<tr><td>VariantLibrary<br>BaseClassLibrary</td>
    <td>Use icons from Modelica.Icons instead.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Media.Examples</strong></td></tr>
<tr><td>Tests.Components.*</td>
    <td>Use classes from Utilities instead.</td></tr>
<tr><td>TestOnly.*<br>Tests.MediaTestModels.*</td>
    <td>Use test models from ModelicaTest.Media instead.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Thermal.FluidHeatFlow</strong></td></tr>
<tr><td>Components.IsolatedPipe<br>Components.HeatedPipe</td>
    <td>Extend from the new pipe model with optional heatPort.</td></tr>
<tr><td>Interfaces.Ambient</td>
    <td>Extends from SinglePortLeft.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Math</strong></td></tr>
<tr><td>baseIcon1<br>baseIcon2</td>
    <td>Use icons from Modelica.Math.Icons instead.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Icons</strong></td></tr>
<tr><td>Library<br>Library2<br>GearIcon<br>MotorIcon<br>Info</td>
    <td>Use (substitute) icons from Modelica.Icons, Modelica.Mechanics.Rotational.Icons or Modelica.Electrical.Machines.Icons instead.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.SIunits.Conversions.NonSIunits</strong></td></tr>
<tr><td>FirstOrderTemperaturCoefficient<br>SecondOrderTemperaturCoefficient</td>
    <td>Use Modelica.SIunits.LinearTemperatureCoefficientResistance or Modelica.SIunits.QuadraticTemperatureCoefficientResistance instead.</td></tr>
</table>

<p><br>
The following <font color=\"blue\"><strong>existing components</strong></font>
have been <font color=\"blue\"><strong>improved</strong></font> in a
<font color=\"blue\"><strong>backward compatible</strong></font> way:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Continuous</strong></td></tr>
<tr><td>Integrator<br>LimIntegrator</td>
    <td>Added optional reset and set value inputs.</td></tr>
<tr><td>LimPID</td>
    <td>Added an optional feed-forward input.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Sources</strong></td></tr>
<tr><td>CombiTimeTable</td>
    <td>The time events were not considered at the interval boundaries in case of linear interpolation and non-replicated sample points. This has been generalized by introduction of the new parameter <code>timeEvents</code> with the default option to always generate time events at the interval boundaries, which might lead to slower, but more accurate simulations.</td></tr>
<tr><td>BooleanTable<br>IntegerTable</td>
    <td>Added options to set start time, shift time and extrapolation kind, especially to set periodic extrapolation.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Tables</strong></td></tr>
<tr><td>CombiTable1D<br>CombiTable1Ds<br>CombiTable2D</td>
    <td>Added option to set the extrapolation kind and to optionally print a warning in case of extrapolated table input.</td></tr>
</table>

<p><br>
The following <font color=\"blue\"><strong>existing components</strong></font> have been <font color=\"blue\"><strong>changed</strong></font> in a <font color=\"blue\"><strong>non-backward compatible</strong></font> way:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Modelica.Blocks</strong></td></tr>
<tr><td>Interfaces.PartialNoise<br>Noise.UniformNoise<br>Noise.NormalNoise<br>Noise.TruncatedNormalNoise<br>Noise.BandLimitedWhiteNoise</td>
    <td>As a side-effect of the corrected computation in Modelica.Math.Random.Utilities.impureRandomInteger the <code>localSeed</code> parameter is computed differently if <code>useAutomaticLocalSeed</code> is set to true.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody</strong></td></tr>
<tr><td>World</td>
    <td>Added new parameter <code>animateGround</code> for optional ground plane visualization.<br>
    Users that have copied the World model (of MSL 3.0, 3.0.1, 3.1, 3.2, 3.2.1, or 3.2.2) as an own World model and used it as inner world component, might have broken their models.
    Generally, for MSL models with sub-typing (due to inner/outer), it is strongly suggested to extend from this MSL model, instead of copying it.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Media.Interfaces</strong></td></tr>
<tr><td>PartialMedium</td>
    <td>Added new constant <code>C_default</code> as default value for the trace substances of medium.<br>
    Users that have created an own medium by inheritance from the PartialMedium package and already added the C_default constant, might have broken their models.<br>
    Users that have copied the PartialMedium package (of MSL 3.0, 3.0.1, 3.1, 3.2, 3.2.1, or 3.2.2) as an own Medium package, might have broken their models.
    Generally, for MSL classes with sub-typing (due to a replaceable declaration), it is strongly suggested to extend from this MSL class, instead of copying it.</td></tr>
</table>

<p><br>
The following <font color=\"red\"><strong>critical errors</strong></font> have been fixed (i.e., errors
that can lead to wrong simulation results):
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Sources</strong></td></tr>
<tr><td>TimeTable</td>
    <td>The derivative of the <code>TimeTable</code> output could no longer be determined. This has been corrected.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Media.Air</strong></td></tr>
<tr><td>MoistAir.molarMass<br>ReferenceMoistAir.molarMass</td>
    <td>The computation of the function output <code>MM</code> was wrong. This has been corrected.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Media.IdealGases.Common.Functions</strong></td></tr>
<tr><td>thermalConductivityEstimate</td>
    <td>The computation of the function output <code>lambda</code> was wrong for the modified Eucken correlation, i.e., if <code>method</code> is set to 2. This has been corrected.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Media.IdealGases.Common.SingleGasesData</strong></td></tr>
<tr><td>CH2<br>CH3<br>CH3OOH<br>C2CL2<br>C2CL4<br>C2CL6<br>C2HCL<br>C2HCL3<br>CH2CO_ketene<br>O_CH_2O<br>HO_CO_2OH<br>CH2BrminusCOOH<br>C2H3CL<br>CH2CLminusCOOH<br>HO2<br>HO2minus<br>OD<br>ODminus</td>
    <td>The coefficients for <code>blow</code>, <code>ahigh</code> and <code>bhigh</code> were wrong. This has been corrected.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Media.IdealGases.Common.MixtureGasNasa</strong></td></tr>
<tr><td>mixtureViscosityChung</td>
    <td>The computation of the function output <code>etaMixture</code> was wrong. This has been corrected.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Media.Incompressible.TableBased</strong></td></tr>
<tr><td>BaseProperties</td>
    <td>The unit of the gas constant <code>R</code> for table based media was not correctly considered. This has been corrected.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Math.Random.Utilities</strong></td></tr>
<tr><td>impureRandomInteger</td>
    <td>The function output <code>y</code> was not computed to yield a discrete uniform distribution for a minimum value <code>imin</code> of 1. This has been corrected.</td></tr>
</table>

</html>"));
end Version_3_2_3;

class Version_3_2_2 "Version 3.2.2 (April 3, 2016)"
  extends Modelica.Icons.ReleaseNotes;

   annotation (Documentation(info="<html>
<p>
Version 3.2.2 is backward compatible to version 3.2.1, that is models developed with
versions 3.0, 3.0.1, 3.1, 3.2, or 3.2.1 will work without any changes also with version 3.2.2
(with exception of the, usually uncritical, non-backwards compatible changes listed below with regards to
external object libraries, and one bug fix introduced in 3.2.1 Build.3 for non-circular pipes
that can be non-backwards compatible if a user constructed a new pipe model based on
Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction, see details below).
</p>

<ul>
<li> This version of the Modelica package is <strong>fully compatible</strong> to
     Modelica Specification <strong>3.2 revision 2</strong>.<br>&nbsp;
     </li>

<li> About <strong>240</strong> tickets have been fixed in this release and the previous maintenance releases:
     <ul>
     <li> <strong>Version 3.2.1 Build.3</strong> (July 30, 2015) with respect to 3.2.1 Build.2 (August 14, 2013):<br>
          About <a href=\"modelica://Modelica/Resources/Documentation/Version-3.2.1/ResolvedTracTickets-build-3.html\">103 tickets</a>
          have been fixed for this maintenance release.<br>&nbsp;</li>

     <li> <strong>Version 3.2.1 Build.4</strong> (September 30, 2015) with respect to 3.2.1 Build.3 (July 30, 2015):
          <ul>
            <li> About <a href=\"modelica://Modelica/Resources/Documentation/Version-3.2.1/ResolvedTracTickets-build-4.html\">10 tickets</a>
                 have been fixed for this maintenance release. Critical tickets:</li>

            <li> Ticket <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/1768\">1768</a>
                 fixes an issue with block <a href=\"modelica://Modelica.Blocks.Sources.CombiTimeTable\">CombiTimeTable</a>
                 (wrong output when using fixed time step integrator with time step greater than table resolution).</li>

            <li> Ticket <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/1758\">1758</a>
                 states that simulation of
                 <a href=\"modelica://Modelica.Fluid.Examples.HeatingSystem\">Modelica.Fluid.Examples.HeatingSystem</a>
                 fails in Dymola 2016 if option \"pedantic mode for checking Modelica semantics\" is set.
                 This issue was not fixed in the library due to the following reasons:<br>
                 The Modelica.Fluid library uses a particular pattern to define some parameters resulting
                 in a cyclic dependency of parameters if only incident information is taken into account.
                 According to Modelica Specification 3.2 revision 2 this is not allowed
                 (and therefore Dymola 2016 correctly reports errors if the pedantic flag is set).
                 In ticket <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/1320\">1320</a>
                 this issue was resolved for Modelica Specification 3.3 revision 1 by allowing
                 cyclic parameter definitions if the cycles disappear when evaluating parameters
                 that have annotation Evaluate=true. Modelica.Fluid is correct with respect
                 to Modelica Specification 3.3 revision 1.
                 Changing the Modelica.Fluid library for 3.2.1 build.4 so that no cyclic parameter dependencies
                 would be present anymore would (a) result in a non-backwards compatible
                 change and (b) make the usage of Modelica.Fluid less convenient. For this
                 reason Modelica.Fluid is not changed. (Practically, this means for example that
                 the pedantic flag in Dymola 2016 needs to be switched off, when using the
                 Modelica.Fluid library in version 3.2.1 build 4 and any previous version).</li>

            <li> In ticket <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/1757\">1757</a> it is (correctly) stated
                 that the example model <a href=\"modelica://Modelica.Media.Examples.PsychrometricData\">PsychrometricData</a>
                 was moved from Modelica.Media.Air.MoistAir.PsychrometricData and that this is a non-backwards compatible change.
                 This non-backwards compatible change is accepted, because it fixes a circular dependency (a model references
                 a package in which it resides), for details see ticket
                 <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/1679\">1679</a>.
                 Fixing this ticket is seen as of much higher priority, as the small drawback that
                 an example model is moved (and the probability is very high that this moved model is not
                 used in any user model).<br>&nbsp;
                </li>
          </ul>
     </li>
     <li> <strong>Version 3.2.2 Build.2</strong> (March 16, 2016) with respect to 3.2.1 Build.4 (September 30, 2015):<br>
          About <a href=\"modelica://Modelica/Resources/Documentation/Version-3.2.2/ResolvedTracTickets.html\">130 tickets</a>
          have been fixed for this release.<br>
          The ModelicaStandardTables object library (.lib, .dll, .a, .so, depending on tool) has
          been split into the libraries <strong>ModelicaStandardTables</strong>, <strong>ModelicaMatIO</strong>, <strong>zlib</strong> and the new
          object library <strong>ModelicaIO</strong> has been added.<br>
          For a <strong>tool vendor</strong> this can be a non-backwards compatible change if the same object libraries have been used in the past
          for different releases of package Modelica.
          In <a href=\"modelica://Modelica/Resources/C-Sources/readme.txt\">Resources/C-Sources/readme.txt</a>
          the issue is explained in detail and how to resolve it.
          For a <strong>user</strong> this might be a non-backwards compatible change if he/she implemented an
          own external C interface function to one of the functions in the ModelicaStandardTables,
          ModelicaMatIO or zlib libraries. In this case, the library annotations to these functions need to be
          adapted.<br>&nbsp;</li>
     </ul>
</li>
<li> In version 3.2.1 Build.3 a new argument crossArea was introduced in the functions of
Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction to fix a subtle bug for the
calculation of pipe friction for non-circular pipes, see <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/1601\">#1601</a>
and <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/1656\">#1656</a>.
If a user utilized a pipe model of Modelica.Fluid.Pipes, this does not matter because the pipe models have been
improved in a fully backwards compatible way. However, if the user constructed an own pipe model based on
the partial package PartialWallFriction and calls the functions defined in PartialWallFriction with
positional (and not named) arguments, then a unit warning or error will occur (depending on the tool
and tool-specific settings) because the new argument crossArea has unit [m2] and the previous
argument at this place, roughness, has unit [m]. If the warning is ignored, the simulation result
will be wrong, because the crossArea is used as roughness. The user needs to fix this by
adapting his/her pipe model so that the crossArea is used in the function calls,
or by using named function arguments.
</li>
</ul>

<p>
The exact difference between package Modelica version 3.2.2 and version 3.2.1 is
summarized in the following two comparison tables:
</p>
<ul>
<li><a href=\"modelica://Modelica/Resources/Documentation/Version-3.2.2/Differences322To321Build4.html\">Difference 3.2.2 to 3.2.1 Build 4</a>,</li>
<li><a href=\"modelica://Modelica/Resources/Documentation/Version-3.2.2/Differences321Build4toBuild2.html\">Difference 3.2.1 Build 4 to 3.2.1 Build 2</a>.</li>
</ul>

<p>
This release of package Modelica, and the accompanying ModelicaTest, has been tested with the
following tools (the tools are listed alphabetically. At the time of the test, some of the
tools might not yet supported the complete Modelica package. For more details of the tests
see <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/1867\">#1867</a>):
</p>

<ul>
<li> <strong>Dymola 2017 Beta.1</strong> (Windows 64 bit, \"Check\" with pedantic flag, that is checking strict
     Modelica compliance, and \"Check with Simulation\").<br>
     <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/1924\">#1924</a>:
     Regression testing of 3.2.2+build.0-beta.2 using Dymola 2017 Dev 4 with respect to
     3.2.1+build.4 reference files<br>
     <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/1949\">#1949</a>:
     Regression testing of 3.2.2+build.0-beta.3 using Dymola 2017 Beta 1 with respect to
     3.2.1+build.4 reference files</li>
<li> <strong>LMS Imagine.Lab Amesim 14.2</strong> and <strong>LMS Imagine.Lab Amesim 15 (development build)</strong>.
     No previously unreported regressions have been detected.</li>
<li> <strong>Maplesim Parser</strong></li>
<li> <strong>OpenModelica 1.9.4 Beta.2</strong> (Windows, Linux, Mac)</li>
</ul>

<p>
The following Modelica packages have been tested that they work together with this release of package Modelica
(alphabetical list):
</p>

<ul>
<li>AirConditioning Library 1.12 (Modelon)</li>
<li>Buildings 2.1.0 (LBNL)</li>
<li>Electric Power Library 2.2.3 (Modelon)</li>
<li>Engine Dynamics Library 1.2.5 (Modelon)</li>
<li>FlexibleBodies 2.2 (DLR)</li>
<li>FlightDynamics 1.0.1 (DLR)</li>
<li>FluidDissipation 1.1.8 (XRG Simulation)</li>
<li>Fuel Cell Library 1.3.3 (Modelon)</li>
<li>Heat Exchanger Library 1.4.1 (Modelon)</li>
<li>Human Comfort Library 2.1.0 (XRG Simulation)</li>
<li>HVAC Library 2.1.0 (XRG Simulation)</li>
<li>Hydraulics Library 4.4 (Modelon)</li>
<li>Hydronics Library 2.1.0 (XRG Simulation)</li>
<li>Hydro Power Library 2.6 (Modelon)</li>
<li>Liquid Cooling Library 1.5 (Modelon)</li>
<li>Modelica_Synchronous 0.92.1</li>
<li>Modelica_LinearSystems2 2.3.4</li>
<li>Modelica_StateGraph2 2.0.3</li>
<li>Optimization 2.2.2 (DLR)</li>
<li>PowerTrain 2.4.0 (DLR)</li>
<li>Pneumatics Library 2.0 (Modelon)</li>
<li>Thermal Power Library 1.12 (Modelon)</li>
<li>Vapor Cycle Library 1.3 (Modelon)</li>
<li>Vehicle Dynamics Library 2.3 (Modelon)</li>
</ul>

<p><br>
The following <font color=\"blue\"><strong>new libraries</strong></font> have been added:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tr><td><a href=\"modelica://Modelica.Electrical.PowerConverters\">Modelica.Electrical.PowerConverters</a></td>
    <td>
    This library offers models for rectifiers, inverters and DC/DC-converters.<br>
    (This library was developed by Christian Kral and Anton Haumer.)
    </td></tr>

<tr><td><a href=\"modelica://Modelica.Magnetic.QuasiStatic.FundamentalWave\">Modelica.Magnetic.QuasiStatic.FundamentalWave</a></td>
    <td>
    This library provides quasi-static models of polyphase machines (induction machines, synchronous machines) in parallel (with the same parameters but different electric connectors)
    to the transient models in <a href=\"modelica://Modelica.Magnetic.FundamentalWave\">Modelica.Magnetic.FundamentalWave</a>.<br>
    Quasistatic means that electric transients are neglected, voltages and currents are supposed to be sinusoidal. Mechanical and thermal transients are taken into account.<br>
    This library is especially useful in combination with the <a href=\"modelica://Modelica.Electrical.QuasiStatic\">Modelica.Electrical.QuasiStatic</a>
    library in order to build up very fast simulations of electrical circuits with sinusoidal currents and voltages.<br>
    (This library was developed by Christian Kral and Anton Haumer.)
    </td></tr>

<tr><td>Sublibraries of <a href=\"modelica://Modelica.Magnetic.FluxTubes\">Modelica.Magnetic.FluxTubes</a></td>
    <td>
   New elements for modeling ferromagnetic (static) and eddy current (dynamic) hysteresis effects and permanent magnets have been added.
   The FluxTubes.Material package is also extended to provide hysteresis data for several magnetic materials. These data is partly based on own measurements.
   For modeling of ferromagnetic hysteresis, two different hysteresis models have been implemented: The simple Tellinen model and the considerably
   more detailed Preisach hysteresis model. The following packages have been added:
  <ul>
  <li><a href=\"modelica://Modelica.Magnetic.FluxTubes.UsersGuide.Hysteresis\">FluxTubes.UsersGuide.Hysteresis</a></li>
  <li><a href=\"modelica://Modelica.Magnetic.FluxTubes.Examples.Hysteresis\">FluxTubes.Examples.Hysteresis</a></li>
  <li><a href=\"modelica://Modelica.Magnetic.FluxTubes.Shapes.HysteresisAndMagnets\">FluxTubes.Shapes.HysteresisAndMagnets</a></li>
  <li><a href=\"modelica://Modelica.Magnetic.FluxTubes.Material.HysteresisEverettParameter\">FluxTubes.Material.HysteresisEverettParameter</a></li>
  <li><a href=\"modelica://Modelica.Magnetic.FluxTubes.Material.HysteresisTableData\">FluxTubes.Material.HysteresisTableData</a></li>
  </ul>
    (These extensions have been developed by Johannes Ziske and Thomas B&ouml;drich as part of the <a href=\"http://www.cleansky.eu/\">Clean Sky</a> JTI project;
     project number: 296369; Theme:
   <a href=\"https://cordis.europa.eu/project/rcn/101194_en.html\">JTI-CS-2011-1-SGO-02-026</a>;
   MOMOLIB - Modelica Model Library Development for Media, Magnetic Systems and Wavelets.
     The partial financial support by the European Union for this development is highly appreciated.).
    </td></tr>

<tr><td>Sublibraries for <strong>noise</strong> modeling</td>
    <td>
   Several new sublibraries have been added allowing the modeling of reproducible noise.
   The most important new sublibraries are (for more details see below):
  <ul>
  <li><a href=\"modelica://Modelica.Blocks.Noise\">Modelica.Blocks.Noise</a></li>
  <li><a href=\"modelica://Modelica.Math.Random\">Modelica.Math.Random</a></li>
  <li><a href=\"modelica://Modelica.Math.Distributions\">Modelica.Math.Distributions</a></li>
  <li><a href=\"modelica://Modelica.Math.Special\">Modelica.Math.Special</a></li>
  </ul>
  (These extensions have been developed by Andreas Kl&ouml;ckner, Frans van der Linden, Dirk Zimmer, and Martin Otter from
  DLR Institute of System Dynamics and Control).
    </td></tr>

<tr><td><a href=\"modelica://Modelica.Utilities\">Modelica.Utilities</a> functions for <strong>matrix read/write</strong></td>
    <td>
   New functions are provided in the <a href=\"modelica://Modelica.Utilities.Streams\">Modelica.Utilities.Streams</a>
   sublibrary to write matrices in MATLAB MAT format on file and read matrices in this format from file.
   The MATLAB MAT formats v4, v6, v7 and v7.3 (in case the tool supports HDF5) are supported by these functions.
   Additionally, example models are provided under
   <a href=\"modelica://Modelica.Utilities.Examples\">Modelica.Utilities.Examples</a>
   to demonstrate the usage of these functions in models. For more details see below.<br>
   (These extensions have been developed by Thomas Beutlich from ITI GmbH).
    </td></tr>

<tr><td><a href=\"modelica://Modelica.Math\">Modelica.Math</a> sublibrary for <strong>FFT</strong></td>
    <td>
   The new sublibrary <a href=\"modelica://Modelica.Math.FastFourierTransform\">FastFourierTransform</a>
   provides utility and convenience functions to compute the Fast Fourier Transform (FFT).
   Additionally two examples are present to demonstrate how to compute an FFT during continuous-time
   simulation and store the result on file. For more details see below.<br>
  (These extensions have been developed by Martin Kuhn and Martin Otter from
   DLR Institute of System Dynamics and Control).
    </td></tr>
</table>

<p><br>
The following <font color=\"blue\"><strong>new components</strong></font> have been added
to <font color=\"blue\"><strong>existing</strong></font> libraries:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Examples</strong></td></tr>
<tr><td width=\"150\">NoiseExamples</td>
    <td> Several examples to demonstrate the usage of the blocks in the
                      new sublibrary Blocks.Noise.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Blocks.Interfaces</strong></td></tr>
<tr><td width=\"150\">PartialNoise</td>
    <td> Partial noise generator (base class of the noise generators in Blocks.Noise)</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Blocks.Math</strong></td></tr>
<tr><td width=\"150\">ContinuousMean</td>
    <td> Calculates the empirical expectation (mean) value of its input signal</td></tr>
<tr><td width=\"150\">Variance</td>
    <td> Calculates the empirical variance of its input signal</td></tr>
<tr><td width=\"150\">StandardDeviation</td>
    <td> Calculates the empirical standard deviation of its input signal</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Blocks.Noise</strong></td></tr>
<tr><td width=\"150\">GlobalSeed</td>
    <td> Defines global settings for the blocks of sublibrary Noise,
                      especially a global seed value is defined</td></tr>
<tr><td width=\"150\">UniformNoise</td>
    <td> Noise generator with uniform distribution</td></tr>
<tr><td width=\"150\">NormalNoise</td>
    <td> Noise generator with normal distribution</td></tr>
<tr><td width=\"150\">TruncatedNormalNoise</td>
    <td> Noise generator with truncated normal distribution</td></tr>
<tr><td width=\"150\">BandLimitedWhiteNoise</td>
    <td> Noise generator to produce band-limited white noise with normal distribution</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.ComplexBlocks.Examples</strong></td></tr>
<tr><td width=\"150\">ShowTransferFunction</td>
    <td> Example to demonstrate the usage of the block TransferFunction.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.ComplexBlocks.ComplexMath</strong></td></tr>
<tr><td width=\"150\">TransferFunction</td>
    <td> This block allows to define a complex transfer function (depending on frequency input w) to obtain the complex output y.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.ComplexBlocks.Sources</strong></td></tr>
<tr><td width=\"150\">LogFrequencySweep</td>
    <td> The logarithm of w performs a linear ramp from log10(wMin) to log10(wMax), the output is the decimal power of this logarithmic ramp.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Machines.Examples</strong></td></tr>
<tr><td width=\"150\">ControlledDCDrives</td>
    <td>Current, speed and position controlled DC PM drive</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.Rotational.Examples.Utilities.</strong></td></tr>
<tr><td width=\"150\">SpringDamperNoRelativeStates</td>
    <td>Introduced to fix ticket <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/1375\">1375</a></td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.Rotational.Components.</strong></td></tr>
<tr><td width=\"150\">ElastoBacklash2</td>
    <td>Alternative model of backlash. The difference to the existing ElastoBacklash
    component is that an event is generated when contact occurs and that the contact torque
    changes discontinuously in this case. For some user models, this variant of a backlash model
    leads to significantly faster simulations.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Fluid.Examples.</strong></td></tr>
<tr><td width=\"150\">NonCircularPipes</td>
    <td>Introduced to check the fix of ticket <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/1601\">1681</a></td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Media.Examples.</strong></td></tr>
<tr><td width=\"150\">PsychrometricData</td>
    <td>Introduced to fix ticket <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/1679\">1679</a></td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Math.Matrices.</strong></td></tr>
<tr><td width=\"150\">balanceABC</td>
    <td> Return a balanced form of a system [A,B;C,0]
                      to improve its condition by a state transformation</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Math.Random.Generators.</strong></td></tr>
<tr><td width=\"150\">Xorshift64star</td>
    <td> Random number generator xorshift64*</td></tr>
<tr><td width=\"150\">Xorshift128plus </td>
    <td> Random number generator xorshift128+</td></tr>
<tr><td width=\"150\">Xorshift1024star</td>
    <td> Random number generator xorshift1024*</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Math.Random.Utilities.</strong></td></tr>
<tr><td width=\"150\">initialStateWithXorshift64star</td>
    <td> Return an initial state vector for a random number generator (based on xorshift64star algorithm)</td></tr>
<tr><td width=\"150\">automaticGlobalSeed </td>
    <td> Creates an automatic integer seed from the current time and process id (= impure function)</td></tr>
<tr><td width=\"150\">initializeImpureRandom </td>
    <td> Initializes the internal state of the impure random number generator</td></tr>
<tr><td width=\"150\">impureRandom</td>
    <td> Impure random number generator (with hidden state vector)</td></tr>
<tr><td width=\"150\">impureRandomInteger </td>
    <td> Impure random number generator for integer values (with hidden state vector)</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Math.Distributions.</strong></td></tr>
<tr><td width=\"150\">Uniform</td>
    <td> Library of uniform distribution functions (functions: density, cumulative, quantile)</td></tr>
<tr><td width=\"150\">Normal</td>
    <td> Library of normal distribution functions (functions: density, cumulative, quantile)</td></tr>
<tr><td width=\"150\">TruncatedNormal </td>
    <td> Library of truncated normal distribution functions (functions: density, cumulative, quantile)</td></tr>
<tr><td width=\"150\">Weibull</td>
    <td> Library of Weibull distribution functions (functions: density, cumulative, quantile)</td></tr>
<tr><td width=\"150\">TruncatedWeibull </td>
    <td> Library of truncated Weibull distribution functions (functions: density, cumulative, quantile)</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Math.Special.</strong></td></tr>
<tr><td width=\"150\">erf</td>
    <td>Error function erf(u) = 2/sqrt(pi)*Integral_0_u exp(-t^2)*d</td></tr>
<tr><td width=\"150\">erfc</td>
    <td>Complementary error function erfc(u) = 1 - erf(u)</td></tr>
<tr><td width=\"150\">erfInv</td>
    <td>Inverse error function: u = erf(erfInv(u))</td></tr>
<tr><td width=\"150\">erfcInv </td>
    <td>Inverse complementary error function: u = erfc(erfcInv(u))</td></tr>
<tr><td width=\"150\">sinc </td>
    <td>Unnormalized sinc function: sinc(u) = sin(u)/u</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Math.FastFourierTransform.</strong></td></tr>
<tr><td width=\"150\">realFFTinfo </td>
    <td>Print information about real FFT for given f_max and f_resolution</td></tr>
<tr><td width=\"150\">realFFTsamplePoints </td>
    <td>Return number of sample points for a real FFT</td></tr>
<tr><td width=\"150\">realFFT</td>
    <td>Return amplitude and phase vectors for a real FFT</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Utilities.Streams.</strong></td></tr>
<tr><td width=\"150\">readMatrixSize</td>
    <td>Read dimensions of a Real matrix from a MATLAB MAT file</td></tr>
<tr><td width=\"150\">readRealMatrix</td>
    <td>Read Real matrix from MATLAB MAT file</td></tr>
<tr><td width=\"150\">writeRealMatrix</td>
    <td>Write Real matrix to a MATLAB MAT file</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Utilities.Strings.</strong></td></tr>
<tr><td width=\"150\">hashString</td>
    <td>Creates a hash value of a String</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Utilities.System.</strong></td></tr>
<tr><td width=\"150\">getTime</td>
    <td>Retrieves the local time (in the local time zone)</td></tr>
<tr><td width=\"150\">getPid</td>
    <td>Retrieves the current process id</td></tr>
</table>

<p><br>
The following <font color=\"blue\"><strong>existing components</strong></font> have been <font color=\"blue\"><strong>changed</strong></font> in a <font color=\"blue\"><strong>non-backward compatible</strong></font> way:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Electrical.Analog.Semiconductors.</strong></td></tr>
<tr><td> HeatingDiode </td>
          <td> Removed protected variable k \"Boltzmann's constant\".<br>
                            Calculate protected constant q \"Electron charge\" from already known constants instead of defining a protected variable q.</td></tr>
<tr><td> HeatingNPN<br>
                      HeatingPNP </td>
          <td> Removed parameter K \"Boltzmann's constant\" and q \"Elementary electronic charge\".<br>
                            Calculate instead protected constant q \"Electron charge\" from already known constants.<br>
                            Users that have used these parameters might have broken their models;
                            the (although formal non-backwards compatible) change offers the users a safer use.</td></tr>
</table>

</html>"));
end Version_3_2_2;

class Version_3_2_1 "Version 3.2.1 (August 14, 2013)"
  extends Modelica.Icons.ReleaseNotes;

   annotation (Documentation(info="<html>
<p>
Version 3.2.1 is backward compatible to version 3.2, that is models developed with
versions 3.0, 3.0.1, 3.1, or 3.2 will work without any changes also with version 3.2.1.
This version is a \"clean-up\" with major emphasis on quality improvement and
tool compatibility. The goal is that all
<a href=\"https://www.modelica.org/tools\">Modelica tools</a> will support this package
and will interpret it in the same way. Short Overview:
</p>

<ul>
<li> This version of the Modelica package is <strong>fully compatible</strong> to
     Modelica Specification <strong>3.2 revision 2</strong>.<br>
     (Especially, some operators used in package Modelica,
     such as \"rooted\", have been standardized in 3.2 rev. 2,
     as well as vendor specific annotations. Furthermore,
     ambiguous/unclear descriptions in the specification have
     been corrected/improved. One important improvement in packages
     Modelica and ModelicaTest is that the initialization has been fully defined
     in all example models, in order that all tools can produce the same result
     without relying on tool heuristics).
     </li>

<li> About <a href=\"modelica://Modelica/Resources/Documentation/Version-3.2.1/ResolvedTracTickets.html\">400 tickets</a>
     have been fixed for this release, and
     especially all compliance issues and all relevant defect issues.
     </li>

<li> An open source implementation of the <strong>table blocks</strong> has been provided
     by <a href=\"http://www.itisim.com\">ITI GmbH</a>. This work has been paid by Modelica Association.
     As a result, all parts of package Modelica are now available
     in a free implementation. Additionally new features have been added to the table blocks
     by this implementation:
     <ul>
     <li>The table outputs can be differentiated once.</li>
     <li>Support of binary MATLAB MAT-file formats v6 and v7</li>
     <li>New option ConstantSegments for parameter Smoothness</li>
     <li>New option NoExtrapolation for parameter Extrapolation</li>
     <li>Support of tables provided in the C-Code (usertab.c, for realtime systems without file system)</li>
     </ul></li>

<li> <strong>Icons</strong> have been re-designed by Wolfram Research to provide a more modern view.</li>

<li> The <strong>Modelica.Media.Air.MoistAir</strong> media model has been improved so that it
     can be used in a temperature range of 190 ... 647 K (previously: 240 ... 400 K).</li>

<li> New media models for air (<strong>ReferenceAir</strong> with a large operating range: 30 ... 2000 K,
     0 ... 2000 MPa), for moist air (<strong>ReferenceMoistAir</strong> with a large operating range:
     143.15 ... 2000 K, 0 .. 10 MPa;  but 1-2 orders of magnitude slower as
     Modelica.Media.Air.MoistAir),
     and the refrigerant <strong>R134a</strong> are included in the Modelica.Media library in order to
     improve the modeling of air conditioning systems especially in aircraft.
     These models have been developed by
     <a href=\"http://www.xrg-simulation.de/\">XRG Simulation GmbH</a>
     as part of the <a href=\"http://www.cleansky.eu/\">Clean Sky</a> JTI project
     (Project number: 296369; Theme: JTI-CS-2011-1-SGO-02-026).
     The partial financial support by the European Union for this development
     is highly appreciated.</li>

<li> <strong>60</strong> models and blocks and <strong>90</strong> functions are newly included, for details see below.</li>

</ul>

<p>
This release of package Modelica, and the accompanying ModelicaTest, has been tested with the
following tools (the tools are listed alphabetically. At the time of the test, some of the
tools might not yet supported the complete Modelica package):
</p>

<ul>
<li> CyModelica</li>
<li> Dymola 2014 (Windows 64 bit)<br>
     Regression test results with regards to Modelica 3.2 are available
     in ticket <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/1114\">#1114</a>.</li>
<li> Dymola 2014 FD01 development with pedantic flag (Windows 64 bit)<br>
     (\"pedantic flag\" means that strict Modelica compliance is checked.
     Dymola 2014 fails with pedantic flag, e.g., because the annotation DocumentationClass
     was not standardized when this version of Dymola was released).</li>
<li> Maplesim Parser</li>
<li> MWorks 3.2</li>
<li> OpenModelica 1.9.0 Beta4+dev (Windows, Linux, Mac)<br>
     Test reports for the daily builds are available
     <a href=\"https://trac.openmodelica.org/OpenModelica/wiki\">here</a>.
     </li>
<li> SimulationX 3.6</li>
</ul>

<p>
The following Modelica packages have been tested that they work together with this release of package Modelica
(alphabetical list):
</p>

<ul>
<li> Buildings 1.4 (LBNL)</li>
<li> FlexibleBodies 2.0.1 (DLR)</li>
<li> Modelica_Synchronous 0.91 (DLR)</li>
<li> Optimization 2.2 (DLR)</li>
<li> PowerTrain 2.2.0 (DLR)</li>
</ul>

<p>
The new open source tables have been tested by T. Beutlich (ITI):
</p>

<ul>
<li> 193 Modelica test models for compatibility check with previous table implementation
     (available in ModelicaTest.Tables).
     Performed tests with SimulationX 3.5.707 (32 bit) and
     Dymola 2013 FD01 (32 bit). Furthermore a basic check was performed in OpenModelica
     to make sure it works in general.
     </li>
<li> The two C source files (Modelica/Resources/C-Sources/ModelicaStandardTables.c; ModelicaMatIO.c)
     have been tested to successfully compile for the following platforms<br>
     &nbsp;&nbsp;&nbsp;Windows 32 and 64 bit<br>
     &nbsp;&nbsp;&nbsp;Linux 32 and 64 bit<br>
     &nbsp;&nbsp;&nbsp;dSPACE SCALEXIO<br>
     &nbsp;&nbsp;&nbsp;dSPACE DS1005 (no file system)<br>
     &nbsp;&nbsp;&nbsp;dSPACE DS1006 (no file system)<br>
     &nbsp;&nbsp;&nbsp;dSPACE DS1401 (no file system)
     </li>
<li> The following compilers/environments have been used for the platform evaluation<br>
     &nbsp;&nbsp;&nbsp;Microsoft compilers (VC6 and &ge; VS2005 (Win32 and x64))<br>
     &nbsp;&nbsp;&nbsp;MinGW (GCC 4.4.0 and GCC 4.7.2)<br>
     &nbsp;&nbsp;&nbsp;Cygwin (GCC 4.3.0)<br>
     &nbsp;&nbsp;&nbsp;Open WATCOM 1.3<br>
     &nbsp;&nbsp;&nbsp;LCC 2.4.1<br>
     &nbsp;&nbsp;&nbsp;Borland C/C++ (free command line tools) 5.5<br>
     &nbsp;&nbsp;&nbsp;GCC 4.x on Linux<br>
     &nbsp;&nbsp;&nbsp;GCC 3.3.5 (for DS1006)<br>
     &nbsp;&nbsp;&nbsp;Microtec PowerPC Compiler 3.7 (for DS1005)
     </li>
</ul>

<p>
The exact difference between package Modelica version 3.2 and version 3.2.1 is
summarized in a
<a href=\"modelica://Modelica/Resources/Documentation/Version-3.2.1/DifferencesTo32.html\">comparison table</a>.
</p>

<p>
About <strong>400</strong> trac tickets have been fixed for this release. An overview is given
<a href=\"modelica://Modelica/Resources/Documentation/Version-3.2.1/ResolvedTracTickets.html\">here</a>.
Clicking on a ticket gives all information about it.
</p>

<p><br>
The following <font color=\"blue\"><strong>new components</strong></font> have been added
to <font color=\"blue\"><strong>existing</strong></font> libraries:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Logical.</strong></td></tr>
<tr><td width=\"150\"> RSFlipFlop</td>
    <td> Basic RS flip flop</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Math.</strong></td></tr>
<tr><td width=\"150\"> MinMax</td>
    <td>Output the minimum and the maximum element of the input vector </td></tr>
<tr><td width=\"150\"> LinearDependency </td>
    <td>Output a linear combination of the two inputs </td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Nonlinear.</strong></td></tr>
<tr><td width=\"150\"> SlewRateLimiter</td>
    <td> Limit the slew rate of a signal </td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Digital.Memories</strong></td></tr>
<tr><td width=\"150\"> DLATRAM</td>
    <td> Level sensitive Random Access Memory </td></tr>
<tr><td width=\"150\"> DLATROM</td>
    <td> Level sensitive Read Only Memory </td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Digital.Multiplexers</strong></td></tr>
<tr><td width=\"150\"> MUX2x1</td>
    <td> A two inputs MULTIPLEXER for multiple value logic (2 data inputs, 1 select input, 1 output) </td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Machines.Examples.InductionMachines.</strong></td></tr>
<tr><td width=\"150\"> IMC_Initialize </td>
    <td> Steady-State Initialization example of InductionMachineSquirrelCage </td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Machines.Examples.SynchronousMachines.</strong></td></tr>
<tr><td width=\"150\"> SMPM_VoltageSource </td>
    <td> PermanentMagnetSynchronousMachine example fed by FOC </td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Polyphase.Examples.</strong></td></tr>
<tr><td width=\"150\"> TestSensors </td>
    <td> Example for polyphase quasiRMS sensors: A sinusoidal source feeds a load consisting of resistor and inductor </td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Polyphase.Sensors.</strong></td></tr>
<tr><td width=\"150\"> VoltageQuasiRMSSensor </td>
    <td> Continuous quasi voltage RMS sensor for polyphase system </td></tr>
<tr><td width=\"150\"> CurrentQuasiRMSSensor </td>
    <td> Continuous quasi current RMS sensor for polyphase system </td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Polyphase.Blocks.</strong></td></tr>
<tr><td width=\"150\"> QuasiRMS </td>
    <td> Determine quasi RMS value of a polyphase system </td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Polyphase.Functions.</strong></td></tr>
<tr><td width=\"150\"> quasiRMS </td>
    <td> Calculate continuous quasi RMS value of input </td></tr>
<tr><td width=\"150\"> activePower </td>
    <td> Calculate active power of voltage and current input </td></tr>
<tr><td width=\"150\"> symmetricOrientation </td>
    <td> Orientations of the resulting fundamental wave field phasors </td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Spice3.Examples.</strong></td></tr>
<tr><td width=\"150\"> CoupledInductors<br>
                                      CascodeCircuit<br>
                                      Spice3BenchmarkDifferentialPair<br>
                                      Spice3BenchmarkMosfetCharacterization<br>
                                      Spice3BenchmarkRtlInverter<br>
                                      Spice3BenchmarkFourBitBinaryAdder</td>
    <td> Spice3 examples and benchmarks from the SPICE3 Version e3 User's Manual </td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Spice3.Basic.</strong></td></tr>
<tr><td width=\"150\"> K_CoupledInductors</td>
    <td> Inductive coupling via coupling factor K </td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Spice3.Semiconductors.</strong></td></tr>
<tr><td width=\"150\"> M_NMOS2<br>
                                      M_PMOS2<br>
                                      ModelcardMOS2</td>
    <td>  N/P channel MOSFET transistor with fixed level 2 </td></tr>
<tr><td width=\"150\"> J_NJFJFE<br>
                                      J_PJFJFE<br>
                                      ModelcardJFET</td>
    <td>  N/P-channel junction field-effect transistor </td></tr>
<tr><td width=\"150\"> C_Capacitor<br>
                                      ModelcardCAPACITOR</td>
    <td>  Semiconductor capacitor model </td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Magnetic.FundamentalWave.Examples.BasicMachines.</strong></td></tr>
<tr><td width=\"150\"> IMC_DOL_Polyphase<br>
                                      IMS_Start_Polyphase<br>
                                      SMPM_Inverter_Polyphase<br>
                                      SMEE_Generator_Polyphase<br>
                                      SMR_Inverter_Polyphase</td>
    <td> Polyphase machine examples </td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Fluid.Sensors.</strong></td></tr>
<tr><td width=\"150\"> MassFractions<br>
                                      MassFractionsTwoPort</td>
    <td> Ideal mass fraction sensors </td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Media.</strong></td></tr>
<tr><td width=\"150\">R134a</td>
    <td> R134a (Tetrafluoroethane) medium model in the range (0.0039 bar .. 700 bar,
    169.85 K .. 455 K)</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Media.Air.</strong></td></tr>
<tr><td width=\"150\"> ReferenceAir</td>
    <td> Detailed dry air model with a large operating range (130 ... 2000 K, 0 ... 2000 MPa)
                        based on Helmholtz equations of state</td></tr>
<tr><td width=\"150\"> ReferenceMoistAir</td>
    <td> Detailed moist air model (143.15 ... 2000 K)</td></tr>
<tr><td width=\"150\"> MoistAir</td>
    <td> Temperature range of functions of MoistAir medium enlarged from
                        240 - 400 K to  190 - 647 K.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Media.Air.MoistAir.</strong></td></tr>
<tr><td width=\"150\"> velocityOfSound<br>
                                      isobaricExpansionCoefficient<br>
                                      isothermalCompressibility<br>
                                      density_derp_h<br>
                                      density_derh_p<br>
                                      density_derp_T<br>
                                      density_derT_p<br>
                                      density_derX<br>
                                      molarMass<br>
                                      T_psX<br>
                                      setState_psX<br>
                                      s_pTX<br>
                                      s_pTX_der<br>
                                      isentropicEnthalpy</td>
    <td> Functions returning additional properties of the moist air medium model</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Thermal.HeatTransfer.Components.</strong></td></tr>
<tr><td width=\"150\"> ThermalResistor</td>
    <td> Lumped thermal element transporting heat without storing it (dT = R*Q_flow) </td></tr>
<tr><td width=\"150\"> ConvectiveResistor</td>
    <td> Lumped thermal element for heat convection (dT = Rc*Q_flow) </td></tr>

<tr><td colspan=\"2\"><strong>Modelica.MultiBody.Examples.Constraints.</strong></td></tr>
<tr><td width=\"150\"> PrismaticConstraint<br>
                        RevoluteConstraint<br>
                        SphericalConstraint<br>
                        UniversalConstraint</td>
    <td> Demonstrates the use of the new Joints.Constraints joints by comparing
                        them with the standard joints.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.MultiBody.Joints.Constraints.</strong></td></tr>
<tr><td width=\"150\"> Prismatic<br>
                        Revolute<br>
                        Spherical<br>
                        Universal</td>
    <td> Joint elements formulated as kinematic constraints. These elements are
                        designed to break kinematic loops and result usually in numerically more
                        efficient and reliable loop handling as the (standard) automatic handling.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.Rotational.</strong></td></tr>
<tr><td width=\"150\"> MultiSensor</td>
    <td> Ideal sensor to measure the torque and power between two flanges and the absolute angular velocity </td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.Translational.</strong></td></tr>
<tr><td width=\"150\"> MultiSensor</td>
    <td> Ideal sensor to measure the absolute velocity, force and power between two flanges </td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Math.</strong></td></tr>
<tr><td width=\"150\"> isPowerOf2</td>
    <td> Determine if the integer input is a power of 2 </td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Math.Vectors.</strong></td></tr>
<tr><td width=\"150\"> normalizedWithAssert</td>
    <td> Return normalized vector such that length = 1 (trigger an assert for zero vector) </td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Math.BooleanVectors.</strong></td></tr>
<tr><td width=\"150\"> countTrue</td>
    <td> Returns the number of true entries in a Boolean vector  </td></tr>
<tr><td width=\"150\"> enumerate</td>
    <td> Enumerates the true entries in a Boolean vector (0 for false entries) </td></tr>
<tr><td width=\"150\"> index</td>
    <td> Returns the indices of the true entries of a Boolean vector</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Utilities.Files.</strong></td></tr>
<tr><td width=\"150\"> loadResource</td>
    <td> Return the absolute path name of a URI or local file name  </td></tr>

<tr><td colspan=\"2\"><strong>Modelica.SIunits.</strong></td></tr>
<tr><td width=\"150\"> PressureDifference<br>
                        MolarDensity<br>
                        MolarEnergy<br>
                        MolarEnthalpy<br>
                        TimeAging<br>
                        ChargeAging<br>
                        PerUnit<br>
                        DerPressureByDensity<br>
                        DerPressureByTemperature</td>
    <td> New SI unit types </td></tr>
</table>
</html>"));
end Version_3_2_1;

class Version_3_2 "Version 3.2 (Oct. 25, 2010)"
  extends Modelica.Icons.ReleaseNotes;

   annotation (Documentation(info="<html>

<p>
Version 3.2 is backward compatible to version 3.1, i.e., models developed with
versions 3.0, 3.0.1, or 3.1 will work without any changes also with version 3.2.
This version is a major improvement:
</p>

<ul>
<li> <strong>357</strong> models and blocks and <strong>295</strong> functions are newly included.</li>

<li><strong>7</strong> new libraries are included.</li>

<li> The icons of the library are newly designed to provide a modern, unified view,
     see <a href=\"modelica://Modelica.Icons\">Modelica.Icons</a>.</li>

<li> All non-Modelica files, such as images, pdf-files, C-source files,
     scripts are moved to the new directory \"Modelica\\Resources\".
     Furthermore, all file references are changed to URIs as introduced in
     Modelica 3.1 (e.g., a file with the file name
     \"Modelica/Resources/Images/xxx\" is referenced as
     \"modelica://Modelica/Resources/Images/xxx\").</li>

<li> All physical models that dissipate heat (such as electrical elements,
     electrical machines, bearings, dampers, etc.), have now an optional heat port
     to which the dissipated energy is flowing, if activated.
     This will significantly improve design studies about the thermal efficiency
     of technical systems.</li>

<li> All electrical machines in the
     <a href=\"modelica://Modelica.Electrical.Machines\">Machines</a>
     library have now a \"Losses\" tab in the parameter menu to optionally
     model machines losses such as frictional losses, stator core losses
     or stray load losses, respectively.</li>

<li> All electrical machines in the
     <a href=\"modelica://Modelica.Electrical.Machines\">Machines</a>
     library have now a \"powerBalance\" result record,
     summarizing converted power and losses.</li>
</ul>

<p>
Version 3.2 is slightly based on the Modelica Specification 3.2. It uses
the following new language elements (compared to Modelica Specification 3.1):
</p>

<ul>
<li> Operator records and overloaded operators.</li>
<li> Functions as input arguments to functions.</li>
<li> Improved expandable connectors (variables declared in expandable
     connectors are ignored if not referenced).</li>
</ul>

<p>
A large part of the new classes has been developed with
partial financial support by
BMBF (BMBF F&ouml;rderkennzeichen: 01IS07022F)
within the ITEA <a href=\"https://itea4.org/project/eurosyslib.html\">EUROSYSLIB</a> research project.
We highly appreciate this funding.
</p>

<p>
The following <font color=\"blue\"><strong>new libraries</strong></font> have been added:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tr><td><a href=\"modelica://Complex\">Complex</a></td>
    <td>
    This is a top-level record outside of the Modelica Standard Library.
    It is used for complex numbers and contains overloaded operators.
    From a users point of view, Complex is used in a similar way as the
    built-in type Real. Example:<br>
    <code>&nbsp;  Real     a    = 2;</code><br>
    <code>&nbsp;  Complex  j    = Modelica.ComplexMath.j;</code><br>
    <code>&nbsp;  Complex  b    = 2 + 3*j;</code><br>
    <code>&nbsp;  Complex  c    = (2*b + a)/b;</code><br>
    <code>&nbsp;  Complex  d    = Modelica.ComplexMath.sin(c);</code><br>
    <code>&nbsp;  Complex  v[3] = {b/2, c, 2*d};</code><br>
    (This library was developed by Marcus Baur, DLR.)
    </td></tr>

<tr><td><a href=\"modelica://Modelica.ComplexBlocks\">Modelica.ComplexBlocks</a></td>
    <td>
    Library of basic input/output control blocks with Complex signals.<br>
    This library is especially useful in combination with the new
    <a href=\"modelica://Modelica.Electrical.QuasiStatic\">Modelica.Electrical.QuasiStatic</a>
    library in order to build up very fast simulations of electrical circuits with periodic
    currents and voltages.<br>
    (This library was developed by Anton Haumer.)
    </td></tr>

<tr><td><a href=\"modelica://Modelica.Electrical.QuasiStatic\">Modelica.Electrical.QuasiStatic</a></td>
    <td>
    Library for quasi-static electrical single-phase and polyphase AC simulation.<br>
    This library allows very fast simulations of electrical circuits with sinusoidal
    currents and voltages by only taking into account the quasi-static, periodic part
    and neglecting non-periodic transients.<br>
    (This library was developed by Anton Haumer and Christian Kral.)
    </td></tr>

<tr><td><a href=\"modelica://Modelica.Electrical.Spice3\">Modelica.Electrical.Spice3</a></td>
    <td>
    Library with components of the Berkeley
    <a href=\"http://bwrc.eecs.berkeley.edu/Classes/IcBook/SPICE/\">SPICE3</a>
    simulator:<br>
    R, C, L, controlled and independent sources, semiconductor device models
    (MOSFET Level 1, Bipolar junction transistor, Diode, Semiconductor resistor).
    The components have been intensively tested with more than 1000 test models
    and compared with results from the SPICE3 simulator. All test models give identical
    results in Dymola 7.4 with respect to the Berkeley SPICE3 simulator up to the relative
    tolerance of the integrators.<br>
    This library allows detailed simulations of electronic circuits.
    Work on Level 2 SPICE3 models, i.e., even more detailed models, is under way.
    Furthermore, a pre-processor is under development to transform automatically
    a SPICE netlist into a Modelica model, in order that the many available
    SPICE3 models can be directly used in a Modelica model.<br>
    (This library was developed by Fraunhofer Gesellschaft, Dresden.)
    </td></tr>

<tr><td><a href=\"modelica://Modelica.Magnetic.FundamentalWave\">Modelica.Magnetic.FundamentalWave</a></td>
    <td>
     Library for magnetic fundamental wave effects in electric machines for the
     application in three phase electric machines.
     The library is an alternative approach to the Modelica.Electrical.Machines library.
     A great advantage of this library is the strict object orientation of the
     electrical and magnetic components that the electric machines models are composed of.
     This allows an easier incorporation of more detailed physical effects of
     electrical machines.
     From a didactic point of view this library is very beneficial for students in the field
     of electrical engineering.<br>
     (This library was developed by Christian Kral and Anton Haumer, using
     ideas and source code of a library from Michael Beuschel from 2000.)
    </td></tr>

<tr><td><a href=\"modelica://Modelica.Fluid.Dissipation\">Modelica.Fluid.Dissipation</a></td>
    <td>
     Library with functions to compute convective heat transfer and pressure loss characteristics.<br>
     (This library was developed by Thorben Vahlenkamp and Stefan Wischhusen from
     XRG Simulation GmbH.)
    </td></tr>

<tr><td><a href=\"modelica://Modelica.ComplexMath\">Modelica.ComplexMath</a></td>
    <td>
    Library of complex mathematical functions (e.g., sin, cos) and of functions operating
    on complex vectors.<br>
    (This library was developed by Marcus Baur from DLR-RM, Anton Haumer, and
     HansJ&uuml;rg Wiesmann.)
    </td></tr>
</table>

<p><br>
The following <font color=\"blue\"><strong>new components</strong></font> have been added
to <font color=\"blue\"><strong>existing</strong></font> libraries:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Modelica.UsersGuide</strong></td></tr>
<tr><td> Conventions
                      </td>
    <td> Considerably improved 'Conventions' for the Modelica Standard Library.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Blocks.Examples</strong></td></tr>
<tr><td> Filter<br>
                      FilterWithDifferentation<br>
                      FilterWithRiseTime<br>
                      RealNetwork1<br>
                      IntegerNetwork1<br>
                      BooleanNetwork1<br>
                      Interaction1
                      </td>
    <td> Examples for the newly introduced block components.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Blocks.Continuous</strong></td></tr>
<tr><td> Filter </td>
    <td> Continuous low pass, high pass, band pass and band stop
                      IIR-filter of type CriticalDamping, Bessel, Butterworth and Chebyshev I.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Blocks.Interaction.Show</strong></td></tr>
<tr><td> RealValue<br>
                      IntegerValue<br>
                      BooleanValue</td>
    <td> Blocks to show the values of variables in a diagram animation.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Blocks.Interfaces</strong></td></tr>
<tr><td> RealVectorInput<br>
                      IntegerVectorInput<br>
                      BooleanVectorInput<br>
                      PartialRealMISO<br>
                      PartialIntegerSISO<br>
                      PartialIntegerMISO<br>
                      PartialBooleanSISO_small<br>
                      PartialBooleanMISO
                      </td>
    <td> Interfaces and partial blocks for the new block components.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Blocks.Math</strong></td></tr>
<tr><td> MultiSum<br>
                      MultiProduct<br>
                      MultiSwitch </td>
    <td> Sum, product and switch blocks with 1,2,...,N inputs
                      (based on connectorSizing annotation to handle vectors of
                       connectors in a convenient way).</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Blocks.MathInteger</strong></td></tr>
<tr><td> MultiSwitch<br>
                      Sum<br>
                      Product<br>
                      TriggeredAdd</td>
    <td> Mathematical blocks for Integer signals.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Blocks.Boolean</strong></td></tr>
<tr><td> MultiSwitch<br>
                      And<br>
                      Or<br>
                      Xor<br>
                      Nand<br>
                      Nor<br>
                      Not<br>
                      RisingEdge<br>
                      FallingEdge<br>
                      ChangingEdge<br>
                      OnDelay</td>
    <td> Mathematical blocks for Boolean signals.
                      Some of these blocks are available also in library
                      <a href=\"modelica://Modelica.Blocks.Logical\">Logical</a>.
                      The new design is based on the connectorSizing annotation that allows
                      the convenient handling of an arbitrary number of input signals
                      (e.g., the \"And\" block has 1,2,...,N inputs, instead of only 2 inputs
                      in the <a href=\"modelica://Modelica.Blocks.Logical\">Logical</a> library).
                      Additionally, the icons are smaller so that the diagram area is
                      better utilized</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Blocks.Sources</strong></td></tr>
<tr><td> RadioButtonSource</td>
    <td> Boolean signal source that mimics a radio button.</td></tr>
<tr><td> IntegerTable</td>
    <td> Generate an Integer output signal based on a table matrix
                      with [time, yi] values.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Examples</strong></td></tr>
<tr><td> SimpleTriacCircuit,<br>
                      IdealTriacCircuit,<br>
                      AD_DA_conversion </td>
    <td> Examples for the newly introduced Analog components.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Ideal</strong></td></tr>
<tr><td> IdealTriac,<br>
                      AD_Converter,<br>
                      DA_Converter </td>
    <td> AD and DA converter, ideal triac (based on ideal thyristor).</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Semiconductors</strong></td></tr>
<tr><td> SimpleTriac </td>
    <td> Simple triac based on semiconductor thyristor model.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Digital.Examples</strong></td></tr>
<tr><td>  Delay_example,<br>
                       DFFREG_example,<br>
                       DFFREGL_example,<br>
                       DFFREGSRH_example,<br>
                       DFFREGSRL_example,<br>
                       DLATREG_example,<br>
                       DLATREGL_example,<br>
                       DLATREGSRH_example,<br>
                       DLATREGSRL_example,<br>
                       NXFER_example,<br>
                       NRXFER_example,<br>
                       BUF3S_example,<br>
                       INV3S_example,<br>
                       WiredX_example </td>
    <td> Examples for the newly introduced Digital components.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Digital.Interfaces</strong></td></tr>
<tr><td> UX01,<br>
                      Strength,<br>
                      MIMO </td>
    <td> Interfaces for the newly introduced Digital components.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Digital.Tables</strong></td></tr>
<tr><td> ResolutionTable,<br>
                      StrengthMap,<br>
                      NXferTable,<br>
                      NRXferTable,<br>
                      PXferTable,<br>
                      PRXferTable,<br>
                      Buf3sTable,<br>
                      Buf3slTable </td>
    <td> New Digital table components.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Digital.Delay</strong></td></tr>
<tr><td> InertialDelaySensitiveVector </td>
    <td> New Digital delay component.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Digital.Registers</strong></td></tr>
<tr><td> DFFR,<br>
                      DFFREG,<br>
                      DFFREGL,<br>
                      DFFSR,<br>
                      DFFREGSRH,<br>
                      DFFREGSRL,<br>
                      DLATR,<br>
                      DLATREG,<br>
                      DLATREGL,<br>
                      DLATSR,<br>
                      DLATREGSRH,<br>
                      DLATREGSRL </td>
    <td> Various register components (collection of flipflops and latches)
                      according to the VHDL standard.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Digital.Tristates</strong></td></tr>
<tr><td> NXFERGATE,<br>
                      NRXFERGATE,<br>
                      PXFERGATE,<br>
                      PRXFERGATE,<br>
                      BUF3S,<br>
                      BUF3SL,<br>
                      INV3S,<br>
                      INV3SL,<br>
                      WiredX </td>
    <td> Transfer gates, buffers, inverters and wired node.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Polyphase.Basic</strong></td></tr>
<tr><td> MutualInductor </td>
    <td> Polyphase inductor providing a mutual inductance matrix model.</td></tr>
<tr><td> ZeroInductor </td>
    <td> Polyphase zero sequence inductor.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Machines</strong></td></tr>
<tr><td> Examples </td>
    <td> Structured according to machine types:<br>
                      InductionMachines<br>
                      SynchronousMachines<br>
                      DCMachines<br>
                      Transformers </td></tr>
<tr><td> Losses.* </td>
    <td> Parameter records and models for losses in electrical machines and transformers (where applicable):<br>
                      Friction losses<br>
                      Brush losses<br>
                      Stray Load losses<br>
                      Core losses (only eddy current losses but no hysteresis losses; not for transformers) </td></tr>
<tr><td> Thermal.* </td>
    <td> Simple thermal ambience, to be connected to the thermal ports of machines,<br>
                      as well as material constants and utility functions.</td></tr>
<tr><td> Icons.* </td>
    <td> Icons for transient and quasi-static electrical machines and transformers.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Machines.Examples.InductionMachines.</strong></td></tr>
<tr><td> AIMC_withLosses </td>
    <td> Induction machine with squirrel cage with losses </td></tr>
<tr><td> AIMC_Transformer </td>
    <td> Induction machine with squirrel cage - transformer starting </td></tr>
<tr><td> AIMC_withLosses </td>
    <td> Test example of an induction machine with squirrel cage with losses </td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Machines.Examples.SynchronousMachines.</strong></td></tr>
<tr><td> SMPM_CurrentSource </td>
    <td> Permanent magnet synchronous machine fed by a current source </td></tr>
<tr><td> SMEE_LoadDump </td>
    <td> Electrical excited synchronous machine with voltage controller </td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Machines.Examples.DCMachines.</strong></td></tr>
<tr><td> DCSE_SinglePhase </td>
    <td> Series excited DC machine, fed by sinusoidal voltage </td></tr>
<tr><td> DCPM_Temperature </td>
    <td> Permanent magnet DC machine, demonstration of varying temperature </td></tr>
<tr><td> DCPM_Cooling </td>
    <td> Permanent magnet DC machine, coupled with a simple thermal model </td></tr>
<tr><td> DCPM_QuasiStatic </td>
    <td> Permanent magnet DC machine, comparison between transient and quasi-static model </td></tr>
<tr><td> DCPM_Losses </td>
    <td> Permanent magnet DC machine, comparison between model with and without losses </td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Machines.BasicMachines.QuasiStaticDCMachines.</strong></td></tr>
<tr><td> DC_PermanentMagnet<br>
                      DC_ElectricalExcited<br>
                      DC_SeriesExcited </td>
    <td> QuasiStatic DC machines, i.e., neglecting electrical transients </td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Machines.BasicMachines.Components.</strong></td></tr>
<tr><td> InductorDC </td>
    <td> Inductor model which neglects der(i) if Boolean parameter quasiStatic = true </td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Machines.Interfaces.</strong></td></tr>
<tr><td>  ThermalPortTransformer<br>
                       PowerBalanceTransformer </td>
    <td> Thermal ports and power balances for electrical machines and transformers.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Machines.Utilities</strong></td></tr>
<tr><td> SwitchedRheostat </td>
    <td> Switched rheostat, used for starting induction motors with slipring rotor.</td></tr>
<tr><td> RampedRheostat </td>
    <td> Ramped rheostat, used for starting induction motors with slipring rotor.</td></tr>
<tr><td> SynchronousMachineData </td>
    <td> The parameters of the synchronous machine model with electrical excitation (and damper) are calculated
                      from parameters normally given in a technical description,
                      according to the standard EN 60034-4:2008 Appendix C.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.Examples.Elementary.</strong></td></tr>
<tr><td> HeatLosses </td>
    <td> Demonstrate the modeling of heat losses.</td></tr>
<tr><td> UserDefinedGravityField </td>
    <td> Demonstrate the modeling of a user-defined gravity field.</td></tr>
<tr><td> Surfaces </td>
    <td> Demonstrate the visualization of a sine surface,<br>
                      as well as a torus and a wheel constructed from a surface.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.Joints.</strong></td></tr>
<tr><td> FreeMotionScalarInit </td>
    <td> Free motion joint that allows initialization and state selection<br>
                      of single elements of the relevant vectors<br>
                      (e.g., initialize r_rel_a[2] but not the other elements of r_rel_a;<br>
                      this new component fixes ticket
                      <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/274\">#274</a>) </td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.Visualizers.</strong></td></tr>
<tr><td> Torus </td>
    <td> Visualizing a torus.</td></tr>
<tr><td> VoluminousWheel </td>
    <td> Visualizing a voluminous wheel.</td></tr>
<tr><td> PipeWithScalarField </td>
    <td> Visualizing a pipe with scalar field quantities along the pipe axis.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.Visualizers.ColorMaps.</strong></td></tr>
<tr><td> jet<br>
                      hot<br>
                      gray<br>
                      spring<br>
                      summer<br>
                      autumn<br>
                      winter </td>
    <td> Functions returning different color maps.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.Visualizers.Colors.</strong></td></tr>
<tr><td> colorMapToSvg </td>
    <td> Save a color map on file in svg (scalable vector graphics) format.</td></tr>
<tr><td> scalarToColor </td>
    <td> Map a scalar to a color using a color map.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.Visualizers.Advanced.</strong></td></tr>
<tr><td> Surface </td>
    <td> Visualizing a moveable, parameterized surface;<br>
                      the surface characteristic is provided by a function<br>
                      (this new component fixes ticket
                       <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/181\">#181</a>)</td></tr>
<tr><td> PipeWithScalarField </td>
    <td> Visualizing a pipe with a scalar field.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.Visualizers.Advanced.SurfaceCharacteristics.</strong></td></tr>
<tr><td> torus </td>
    <td> Function defining the surface characteristic of a torus.</td></tr>
<tr><td> pipeWithScalarField </td>
    <td> Function defining the surface characteristic of a pipe<br>
                      where a scalar field value is displayed with color along the pipe axis.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.Rotational.Examples.</strong></td></tr>
<tr><td> HeatLosses </td>
    <td> Demonstrate the modeling of heat losses.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.Translational.Examples.</strong></td></tr>
<tr><td> HeatLosses </td>
    <td> Demonstrate the modeling of heat losses.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Fluid.Fittings.Bends</strong></td></tr>
<tr><td> CurvedBend<br>
                      EdgedBend</td>
    <td> New fitting (pressure loss) components.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Fluid.Fittings.Orifices.</strong></td></tr>
<tr><td> ThickEdgedOrifice</td>
    <td> New fitting (pressure loss) component.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Fluid.Fittings.GenericResistances.</strong></td></tr>
<tr><td> VolumeFlowRate</td>
    <td> New fitting (pressure loss) component.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Math</strong></td></tr>
<tr><td> isEqual </td>
    <td> Determine if two Real scalars are numerically identical.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Math.Vectors</strong></td></tr>
<tr><td> find </td>
    <td> Find element in vector.</td></tr>
<tr><td> toString </td>
    <td> Convert a real vector to a string.</td></tr>
<tr><td> interpolate </td>
    <td> Interpolate in a vector.</td></tr>
<tr><td> relNodePositions </td>
    <td> Return vector of relative node positions (0..1).</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Math.Vectors.Utilities</strong></td></tr>
<tr><td> householderVector<br>
                      householderReflection<br>
                      roots </td>
    <td> Utility functions for vectors that are used by the newly introduced functions,
                      but are only of interest for a specialist.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Math.Matrices</strong></td></tr>
<tr><td> continuousRiccati<br>
                      discreteRiccati </td>
    <td> Return solution of continuous-time and discrete-time
                      algebraic Riccati equation respectively.</td></tr>
<tr><td> continuousSylvester<br>
                      discreteSylvester </td>
    <td> Return solution of continuous-time and discrete-time
                      Sylvester equation respectively.</td></tr>
<tr><td> continuousLyapunov<br>
                      discreteLyapunov </td>
    <td> Return solution of continuous-time and discrete-time
                      Lyapunov equation respectively.</td></tr>
<tr><td> trace </td>
    <td> Return the trace of a matrix.</td></tr>
<tr><td> conditionNumber </td>
    <td> Compute the condition number of a matrix.</td></tr>
<tr><td> rcond </td>
    <td> Estimate the reciprocal condition number of a matrix.</td></tr>
<tr><td> nullSpace </td>
    <td> Return a orthonormal basis for the null space of a matrix.</td></tr>
<tr><td> toString </td>
    <td> Convert a matrix into its string representation.</td></tr>
<tr><td> flipLeftRight </td>
    <td> Flip the columns of a matrix in left/right direction.</td></tr>
<tr><td> flipUpDown </td>
    <td> Flip the rows of a matrix in up/down direction.</td></tr>
<tr><td> cholesky </td>
    <td> Perform Cholesky factorization of a real symmetric positive definite matrix.</td></tr>
<tr><td> hessenberg </td>
    <td> Transform a matrix to upper Hessenberg form.</td></tr>
<tr><td> realSchur </td>
    <td> Computes the real Schur form of a matrix.</td></tr>
<tr><td> frobeniusNorm </td>
    <td> Return the Frobenius norm of a matrix.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Math.Matrices.LAPACK.</strong></td></tr>
<tr><td> dtrevc<br>
                      dpotrf<br>
                      dtrsm<br>
                      dgees<br>
                      dtrsen<br>
                      dgesvx<br>
                      dhseqr<br>
                      dlange<br>
                      dgecon<br>
                      dgehrd<br>
                      dgeqrf<br>
                      dggevx<br>
                      dgesdd<br>
                      dggev<br>
                      dggevx<br>
                      dhgeqz<br>
                      dormhr<br>
                      dormqr<br>
                      dorghr</td>
    <td> New interface functions for LAPACK
                      (should usually not directly be used but only indirectly via
                      Modelica.Math.Matrices).</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Math.Matrices.Utilities.</strong></td></tr>
<tr><td> reorderRSF<br>
                      continuousRiccatiIterative<br>
                      discreteRiccatiIterative<br>
                      eigenvaluesHessenberg<br>
                      toUpperHessenberg<br>
                      householderReflection<br>
                      householderSimilarityTransformation<br>
                      findLokal_tk</td>
    <td> Utility functions for matrices that are used by the newly introduced functions,
                      but are only of interest for a specialist.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Math.Nonlinear</strong></td></tr>
<tr><td> quadratureLobatto </td>
    <td> Return the integral of an integrand function using an adaptive Lobatto rule.</td></tr>
<tr><td> solveOneNonlinearEquation </td>
    <td> Solve f(u) = 0 in a very reliable and efficient way
                      (f(u_min) and f(u_max) must have different signs).</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Math.Nonlinear.Examples.</strong></td></tr>
<tr><td> quadratureLobatto1<br>
                      quadratureLobatto2<br>
                      solveNonlinearEquations1<br>
                      solveNonlinearEquations2 </td>
    <td> Examples that demonstrate the usage of the Modelica.Math.Nonlinear functions
                      to integrate over functions and to solve scalar nonlinear equations.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Math.BooleanVectors.</strong></td></tr>
<tr><td> allTrue </td>
    <td> Returns true, if all elements of the Boolean input vector are true.</td></tr>
<tr><td> anyTrue </td>
    <td> Returns true, if at least on element of the Boolean input vector is true.</td></tr>
<tr><td> oneTrue </td>
    <td> Returns true, if exactly one element of the Boolean input vector is true.</td></tr>
<tr><td> firstTrueIndex </td>
    <td> Returns the index of the first element of the Boolean vector that
                      is true and returns 0, if no element is true </td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Icons.</strong></td></tr>
<tr><td> Information<br>
                      Contact<br>
                      ReleaseNotes<br>
                      References<br>
                      ExamplesPackage<br>
                      Example<br>
                      Package<br>
                      BasesPackage<br>
                      VariantsPackage<br>
                      InterfacesPackage<br>
                      SourcesPackage<br>
                      SensorsPackage<br>
                      MaterialPropertiesPackage<br>
                      MaterialProperty </td>
    <td> New icons to get a unified view on different categories
                      of packages.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.SIunits.</strong></td></tr>
<tr><td> ComplexCurrent<br>
                      ComplexCurrentSlope<br>
                      ComplexCurrentDensity<br>
                      ComplexElectricPotential<br>
                      ComplexPotentialDifference<br>
                      ComplexVoltage<br>
                      ComplexVoltageSlope<br>
                      ComplexElectricFieldStrength<br>
                      ComplexElectricFluxDensity<br>
                      ComplexElectricFlux<br>
                      ComplexMagneticFieldStrength<br>
                      ComplexMagneticPotential<br>
                      ComplexMagneticPotentialDifference<br>
                      ComplexMagnetomotiveForce<br>
                      ComplexMagneticFluxDensity<br>
                      ComplexMagneticFlux<br>
                      ComplexReluctance<br>
                      ComplexImpedance<br>
                      ComplexAdmittance<br>
                      ComplexPower</td>
    <td> SIunits to be used in physical models using complex variables, e.g.,<br>
                      <a href=\"modelica://Modelica.Electrical.QuasiStatic\">Modelica.Electrical.QuasiStatic</a>,
                      <a href=\"modelica://Modelica.Magnetic.FundamentalWave\">Modelica.Magnetic.FundamentalWave</a> </td></tr>
<tr><td> ImpulseFlowRate<br>
                      AngularImpulseFlowRate</td>
    <td> New SIunits for mechanics.</td></tr>
</table>

<p><br>
The following <font color=\"blue\"><strong>existing components</strong></font>
have been <font color=\"blue\"><strong>improved</strong></font> in a
<font color=\"blue\"><strong>backward compatible</strong></font> way:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Sources.</strong></td></tr>
<tr><td> Pulse<br>
                      SawTooth </td>
    <td> New parameter \"nperiod\" introduced to define the number of periods
                      for the signal type. Default is \"infinite number of periods
                      (nperiods=-1).</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.</strong></td></tr>
<tr><td> Polyphase.*</td>
    <td> All dissipative components have now an optional heatPort connector
                      to which the dissipated losses are transported in form of heat.
                       </td></tr>
<tr><td> Machines.*</td>
    <td> To all electric machines (asynchronous and synchronous induction machines, DC machines)
                      and transformers loss models have been added (where applicable):<br>
                      Temperature dependent resistances (ohmic losses)<br>
                      Friction losses<br>
                      Brush losses<br>
                      Stray Load losses<br>
                      Core losses (only eddy current losses but no hysteresis losses; not for transformers)<br>
                      As default, temperature dependency and losses are set to zero.<br><br>
                      To all electric machines (asynchronous and synchronous induction machines, DC machines)
                      and transformers conditional thermal ports have been added,
                      to which the dissipated losses are flowing, if activated.
                      The thermal port contains a <a href=\"modelica://Modelica.Thermal.HeatTransfer.Interfaces.HeatPort\">HeatPort</a>
                      for each loss source of the specific machine type.<br><br>
                      To all electric machines (asynchronous and synchronous induction machines, DC machines)
                      a \"powerBalance\" result record has been added, summarizing converted power and losses.
                       </td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Mechanics.</strong></td></tr>
<tr><td> MultiBody.*<br>
                      Rotational.*<br>
                      Translational.*</td>
    <td> All dissipative components in Modelica.Mechanics have now an
                      optional heatPort connector to which the dissipated energy is
                      transported in form of heat.<br>
                      All icons in Modelica.Mechanics are unified according to the
                      Modelica.Blocks library:<br>
                      \"%name\": width: -150 .. 150, height: 40, color: blue<br>
                      other text: height: 30, color: black
                       </td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.</strong></td></tr>
<tr><td> World </td>
    <td> Function gravityAcceleration is made replaceable, so that redeclaration
                      yields user-defined gravity fields.
                       </td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Fluid.Valves.</strong></td></tr>
<tr><td> ValveIncompressible<br>
                      ValveVaporizing<br>
                      ValveCompressible</td>
    <td> (a) Optional filtering of opening signal introduced to model
                      the delay time of the opening/closing drive. In this case, an optional
                      leakageOpening can be defined to model leakage flow and/or to
                      improve the numerics in certain situations.
                      (b) Improved regularization of the valve characteristics in some cases
                      so that it is twice differentiable (smooth=2),
                      instead of continuous (smooth=0).</td>
                      </tr>

<tr><td colspan=\"2\"><strong>Modelica.Fluid.Sources.</strong></td></tr>
<tr><td> FixedBoundary<br>
                      Boundary_pT<br>
                      Boundary_ph</td>
    <td> Changed the implementation so that no non-linear algebraic
                      equation system occurs, if the given variables (e.g. p,T,X) do
                      not correspond to the medium states (e.g. p,h,X). This is
                      achieved by using appropriate \"setState_xxx\" calls to compute the
                      medium state from the given variables. If a nonlinear equation
                      system occurs, it is solved by a specialized handler inside the
                      setState_xxx(..) function, but in the model this equation system is
                      not visible.</td>
                      </tr>

<tr><td colspan=\"2\"><strong>Modelica.Media.Interfaces.</strong></td></tr>
<tr><td> PartialMedium </td>
    <td> The min/max values of types SpecificEnthalpy, SpecificEntropy,
                      SpecificHeatCapacity increased, due to reported user problems.<br>
                      New constant C_nominal introduced to provide nominal values for
                      trace substances (utilized in Modelica.Fluid to avoid numerical problems;
                      this fixes ticket
                      <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/393\">#393</a>).</td>
                      </tr>

<tr><td colspan=\"2\"><strong>Modelica.Thermal.</strong></td></tr>
<tr><td> HeatTransfer.*</td>
    <td> All icons are unified according to the
                      Modelica.Blocks library:<br>
                      \"%name\": width: -150 .. 150, height: 40, color: blue<br>
                      other text: height: 30, color: black
                       </td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Math.Matrices</strong></td></tr>
<tr><td> QR </td>
    <td> A Boolean input \"pivoting\" has been added (now QR(A, pivoting)) to provide QR-decomposition without pivoting (QR(A, false)). Default is pivoting=true.</td></tr>
</table>

<p><br>
The following <font color=\"red\"><strong>critical errors</strong></font> have been fixed (i.e., errors
that can lead to wrong simulation results):
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Digital.Delay.</strong></td></tr>
<tr><td> InertialDelaySensitive </td>
    <td> In order to decide whether the rising delay (tLH) or
                      the falling delay (tHL) is used, the \"previous\" value of the
                      output y has to be used and not the \"previous\" value of the
                      input x (delayType = delayTable[y_old, x] and not
                      delayType = delayTable[x_old, x]). This has been corrected.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.Parts.</strong></td></tr>
<tr><td> BodyBox<br>
                      BodyCylinder </td>
    <td> Fixes ticket
                      <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/373\">#373</a>:
                      The \"Center of Mass\" was calculated as normalize(r)*length/2. This is
                      only correct if the box/cylinder is attached between frame_a and frame_b.
                      If this is not the case, the calculation is wrong.
                      The has been fixed by using the correct formula:<br>
                      r_shape + normalize(lengthDirection)*length/2</td></tr>
<tr><td> BodyShape<br>
                      BodyBox<br>
                      BodyCylinder </td>
    <td> Fixes ticket
                      <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/300\">#300</a>:
                      If parameter enforceStates=true, an error occurred.
                      This has been fixed.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Mechanics.Rotational.Components.</strong></td></tr>
<tr><td> LossyGear</td>
    <td> In cases where the driving flange is not obvious, the component could
                      lead to a non-convergent event iteration. This has been fixed
                      (a detailed description is provided in ticket
                      <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/108\">#108</a>
                      and in the
                      <a href=\"modelica://Modelica/Resources/Documentation/Mechanics/Lossy-Gear-Bug_Solution.pdf\">attachment</a>
                      of this ticket).</td></tr>

<tr><td> Gearbox</td>
    <td> If useSupport=false, the support flange of the internal LossyGear
                      model was connected to the (disabled) support connector. As a result, the
                      LossyGear was \"free floating\". This has been corrected.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Fluid.Pipes.</strong></td></tr>
<tr><td> DynamicPipe</td>
    <td> Bug fix for dynamic mass, energy and momentum balances
                      for pipes with nParallel&gt;1.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.</strong></td></tr>
<tr><td> PartialPipeFlowHeatTransfer</td>
    <td> Calculation of Reynolds numbers for the heat transfer through
                      walls corrected, if nParallel&gt;1.
                      This partial model is used by LocalPipeFlowHeatTransfer
                      for laminar and turbulent forced convection in pipes.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Media.Interfaces.PartialLinearFluid</strong></td></tr>
<tr><td> setState_psX</td>
    <td> Sign error fixed.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Media.CompressibleLiquids.</strong></td></tr>
<tr><td> LinearColdWater</td>
    <td> Fixed wrong values for thermal conductivity and viscosity.</td></tr>

</table>

<p><br>
The following <font color=\"red\"><strong>uncritical errors</strong></font> have been fixed (i.e., errors
that do <font color=\"red\"><strong>not</strong></font> lead to wrong simulation results, but, e.g.,
units are wrong or errors in documentation):
</p>
<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Modelica.Math.Matrices.LAPACK</strong></td></tr>
<tr><td> dgesv_vec<br>
                        dgesv<br>
                        dgetrs<br>
                        dgetrf<br>
                        dgetrs_vec<br>
                        dgetri<br>
                        dgeqpf<br>
                        dorgqr<br>
                        dgesvx<br>
                        dtrsyl</td>
    <td> Integer inputs to specify leading dimensions of matrices have got a lower bound 1 (e.g., lda=max(1,n))
                      to avoid incorrect values (e.g., lda=0) in the case of empty matrices.<br>
                      The Integer variable \"info\" to indicate the successful call of a LAPACK routine has been converted to an output where it had been a protected variable.</td></tr>
</table>

<p><br>
The following trac tickets have been fixed:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Modelica</strong></td></tr>
<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/155\">#155</a></td>
    <td>Wrong usage of \"fillColor\" and \"fillPattern\" annotations for lines</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/211\">#211</a></td>
    <td>Undefined function realString used in MSL</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/216\">#216</a></td>
    <td>Make MSL version 3.2 more Modelica 3.1 conform</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/218\">#218</a></td>
    <td>Replace `Modelica://`-URIs by `modelica://`-URIs</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/271\">#271</a></td>
    <td>Documentation URI errors in MSL 3.1</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/292\">#292</a></td>
    <td>Remove empty \"\" annotations\"</td>
</tr>
<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/294\">#294</a></td>
    <td>Typo 'w.r.t' --> 'w.r.t.'</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/296\">#296</a></td>
    <td>Unify disclaimer message and improve bad style \"here\" links</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/333\">#333</a></td>
    <td>Fix real number formats of the form `.[0-9]+`</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/347\">#347</a></td>
    <td>invalid URI in MSL 3.2</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/355\">#355</a></td>
    <td>Non-standard annotations</td>
</tr>

<tr><td colspan=\"2\"><br><strong>Modelica.Blocks</strong></td></tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/227\">#227</a></td>
    <td>Enhance unit deduction functionality by adding 'unit=\"1\"' to some blocks\"</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/349\">#349</a></td>
    <td>Incorrect annotation in Blocks/Continuous.mo</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/374\">#374</a></td>
    <td>Parameter with no value at all in Modelica.Blocks.Continuous.TransferFunction</td>
</tr>

<tr><td colspan=\"2\"><br><strong>Modelica.Constants</strong></td></tr>
<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/356\">#356</a></td>
    <td>Add Euler-Mascheroni constant to Modelica.Constants</td>
</tr>

<tr><td colspan=\"2\"><br><strong>Modelica.Electrical.Analog</strong></td></tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/346\">#346</a></td>
    <td>Multiple text in Modelica.Electrical.Analog.Basic.Conductor</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/363\">#363</a></td>
    <td>Mixture of Real and Integer in index expressions in Modelica.Electrical.Analog.Lines</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/384\">#384</a></td>
    <td>Incomplete annotations in some examples</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/396\">#396</a></td>
    <td>Bug in Modelica.Electrical.Analog.Ideal.ControlledIdealIntermediateSwitch</td>
</tr>

<tr><td colspan=\"2\"><br><strong>Modelica.Machines</strong></td></tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/276\">#276</a></td>
    <td>Improve/fix documentation of Modelica.Electrical.Machines</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/288\">#288</a></td>
    <td>Describe thermal concept of machines</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/301\">#301</a></td>
    <td>Documentation of Electrical.Machines.Examples needs update</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/306\">#306</a></td>
    <td>Merge content of `Modelica.Electrical.Machines.Icons` into `Modelica.Icons`</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/362\">#362</a></td>
    <td>Incomplete example model for DC machines</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/375\">#375</a></td>
    <td>Strangeness with final parameters with no value but a start value</td>
</tr>

<tr><td colspan=\"2\"><br><strong>Modelica.Electrical.Polyphase</strong></td></tr>
<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/173\">#173</a></td>
    <td>m-phase mutual inductor</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/200\">#200</a></td>
    <td>adjust Polyphase to Analog</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/277\">#277</a></td>
    <td>Improve/fix documentation of Modelica.Electrical.Polyphase</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/352\">#352</a></td>
    <td>Odd annotation in Modelica.Electrical.Polyphase.Sources.SignalVoltage</td>
</tr>

<tr><td colspan=\"2\"><br><strong>Modelica.Fluid</strong></td></tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/215\">#215</a></td>
    <td>Bug in Modelica.Fluid.Pipes.DynamicPipe</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/219\">#219</a></td>
    <td>Fluid.Examples.HeatExchanger: Heat transfer is switched off and cannot be enabled</td>
</tr>

<tr><td colspan=\"2\"><br><strong>Modelica.Math</strong></td></tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/348\">#348</a></td>
    <td>Small error in documentation</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/371\">#371</a></td>
    <td>Modelica.Math functions declared as \"C\" not \"builtin\"\"</td>
</tr>

<tr><td colspan=\"2\"><br><strong>Modelica.Mechanics.MultiBody</strong></td></tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/50\">#50</a></td>
    <td>Error in LineForce handling of potential root</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/71\">#71</a></td>
    <td>Make MultiBody.World replaceable</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/181\">#181</a></td>
    <td>3d surface visualisation</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/210\">#210</a></td>
    <td>Description of internal gear wheel missing</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/242\">#242</a></td>
    <td>Missing each qualifier for modifiers in MultiBody.</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/251\">#251</a></td>
    <td>Using enforceStates=true for BodyShape causes errors</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/255\">#255</a></td>
    <td>Error in Revolute's handling of non-normalized axis of rotations</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/268\">#268</a></td>
    <td>Non-standard annotation in MultiBody,Examples.Systems.RobotR3</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/269\">#269</a></td>
    <td>What is the purpose of MultiBody.Examples.Systems.RobotR3.Components.InternalConnectors?</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/272\">#272</a></td>
    <td>Function World.gravityAcceleration should not be protected</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/274\">#274</a></td>
    <td>Convenient and mighty  initialization of frame kinematics</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/286\">#286</a></td>
    <td>Typo in Multibody/Frames.mo</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/300\">#300</a></td>
    <td>enforceStates parameter managed incorrectly in BodyShape, BodyBox, BodyCylinder</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/320\">#320</a></td>
    <td>Replace non-standard annotation by `showStartAttribute`</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/373\">#373</a></td>
    <td>Error in Modelica Mechanics</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/389\">#389</a></td>
    <td>Shape.rxvisobj wrongly referenced in Arrow/DoubleArrow</td>
</tr>

<tr><td colspan=\"2\"><br><strong>Modelica.Mechanics.Rotational</strong></td></tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/108\">#108</a></td>
    <td>Problem with model \"Lossy Gear\" and approach to a solution</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/278\">#278</a></td>
    <td>Improve/fix documentation of Modelica.Mechanics.Rotational</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/381\">#381</a></td>
    <td>Bug in Modelica.Mechanics.Rotational.Gearbox</td>
</tr>

<tr><td colspan=\"2\"><br><strong>Modelica.Mechanics.Translational</strong></td></tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/279\">#279</a></td>
    <td>Improve/fix documentation of Modelica.Mechanics.Translational</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/310\">#310</a></td>
    <td>Erroneous image links in `Modelica.Mechanics.Translational`</td>
</tr>

<tr><td colspan=\"2\"><br><strong>Modelica.Media</strong></td></tr>
<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/72\">#72</a></td>
    <td>PartialMedium functions not provided for all media in  Modelica.Media</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/217\">#217</a></td>
    <td>Missing image file Air.png</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/224\">#224</a></td>
    <td>dpT calculation in waterBaseProp_dT</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/393\">#393</a></td>
    <td>Provide C_nominal in Modelica.Media to allow propagating
                     value and avoid wrong numerical results</td>
</tr>

<tr><td colspan=\"2\"><br><strong>Modelica.StateGraph</strong></td></tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/206\">#206</a></td>
    <td>Syntax error in StateGraph.mo</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/261\">#261</a></td>
    <td>Modelica.StateGraph should mention the availability of Modelica_StateGraph2</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/354\">#354</a></td>
    <td>Bad annotation in Modelica.StateGraph.Temporary.NumericValue</td>
</tr>

<tr><td colspan=\"2\"><br><strong>Modelica.Thermal.FluidHeatFlow</strong></td></tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/280\">#280</a></td>
    <td>Improve/fix documentation of Modelica.Thermal.FluidHeatFlow</td>
</tr>

<tr><td colspan=\"2\"><br><strong>Modelica.Thermal.HeatTransfer</strong></td></tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/281\">#281</a></td>
    <td>Improve/fix documentation of Modelica.Thermal.HeatTransfer</td>
</tr>

<tr><td colspan=\"2\"><br><strong>Modelica.UsersGuide</strong></td></tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/198\">#198</a></td>
    <td>Name of components in MSL not according to naming conventions</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/204\">#204</a></td>
    <td>Minor correction to User's Guide's section on version management</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/244\">#244</a></td>
    <td>Update the contacts section of the User's Guide</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/267\">#267</a></td>
    <td>MSL-Documentation: Shouldn't equations be numbered on the right hand side?</td>
</tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/299\">#299</a></td>
    <td>SVN keyword expansion messed up the User's guide section on version management</td>
</tr>

<tr><td colspan=\"2\"><br><strong>Modelica.Utilities</strong></td></tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/249\">#249</a></td>
    <td>Documentation error in ModelicaUtilities.h</td>
</tr>

<tr><td colspan=\"2\"><br><strong>ModelicaServices</strong></td></tr>

<tr><td>
    <a href=\"https://github.com/modelica/ModelicaStandardLibrary/issues/248\">#248</a></td>
    <td>No uses statement on ModelicaServices in MSL 3.1</td>
</tr>

</table>

<p>
Note:
</p>
<ul>
<li> Libraries
     <a href=\"https://github.com/modelica-deprecated/Modelica_FundamentalWave\">Modelica_FundamentalWave</a>
     and
     <a href=\"https://github.com/modelica-deprecated/Modelica_Quasistationary\">Modelica_QuasiStationary</a>
     are included in this version in an improved form.</li>
<li> From library
     <a href=\"https://github.com/modelica/Modelica_LinearSystems2\">Modelica_LinearSystems2</a>,
     the sublibraries
     Math.Complex, Math.Vectors and Math.Matrices are included in this version
     in an improved form.</li>
<li> From library
     <a href=\"https://github.com/modelica/Modelica_StateGraph2\">Modelica_StateGraph2</a>,
     the sublibrary Blocks is included in this version in an improved form.</li>
</ul>
</html>"));
end Version_3_2;

class Version_3_1 "Version 3.1 (August 14, 2009)"
  extends Modelica.Icons.ReleaseNotes;

   annotation (Documentation(info="<html>

<p>
Version 3.1 is backward compatible to version 3.0 and 3.0.1,
i.e., models developed with version 3.0 or 3.0.1 will work without any
changes also with version 3.1.
</p>

<p>
Version 3.1 is slightly based on the Modelica Specification 3.1. It uses
the following new language elements (compared to Modelica Specification 3.0):
</p>

<ul>
<li> Prefix <u>stream</u> and built-in operators <u>inStream(..)</u>
     and <u>actualStream(..)</u> in Modelica.Fluid.</li>
<li> Annotation <u>connectorSizing</u> in Modelica.Fluid.</li>
<li> Annotation <u>inverse</u> in Modelica.Media.</li>
<li> Annotations <u>versionBuild</u>, <u>dateModified</u>,
     <u>revisionId</u> at the root level annotation of package Modelica,
     to improve the version handling.</li>
<li> Modifiers can be used in connectors instances (so balanced models
     are less restrictive). This allowed to make the implementation
     of conditional connectors (support and heatPort) in the Rotational,
     Translational and Electrical libraries simpler.</li>
</ul>

<p>
The following <font color=\"blue\"><strong>new libraries</strong></font> have been added:
</p>
<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tr><td><a href=\"modelica://Modelica.Fluid\">Modelica.Fluid</a></td>
    <td>
     Components to model 1-dim. thermo-fluid flow in networks of vessels, pipes,
     fluid machines, valves and fittings. All media from the
     Modelica.Media library can be used (so incompressible or compressible,
     single or multiple substance, one or two phase medium).
    The library is using the stream-concept from Modelica Specification 3.1.
    </td></tr>

<tr><td><a href=\"modelica://Modelica.Magnetic.FluxTubes\">Modelica.Magnetic.FluxTubes</a></td>
    <td>
     Components to model magnetic devices based on the magnetic flux tubes concepts.
     Especially to model
     electromagnetic actuators. Nonlinear shape, force, leakage, and
     Material models. Material data for steel, electric sheet, pure iron,
     Cobalt iron, Nickel iron, NdFeB, Sm2Co17, and more.
    </td></tr>

<tr><td><a href=\"modelica://ModelicaServices\">ModelicaServices</a></td>
    <td>
     New top level package that shall contain functions and models to be used in the
     Modelica Standard Library that requires a tool specific implementation.
     ModelicaServices is then used in the Modelica package.
     In this first version, the 3-dim. animation with model Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape
     was moved to ModelicaServices. Tool vendors can now provide their own implementation
     of the animation.
    </td></tr>
</table>

<p><br>
The following <font color=\"blue\"><strong>new components</strong></font> have been added
to <font color=\"blue\"><strong>existing</strong></font> libraries:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Modelica.</strong></td></tr>
<tr><td> versionBuild<br>versionDate<br>dateModified<br>revisionId </td>
    <td> New annotations from Modelica 3.1 for version handling added.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.UsersGuide.ReleaseNotes.</strong></td></tr>
<tr><td> VersionManagement </td>
    <td> Copied from info layer of previous ReleaseNotes (to make it more
                      visible) and adapted it to the new possibilities in
                      Modelica Specification 3.1.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Blocks.Math.</strong></td></tr>
<tr><td> RectangularToPolar<br>
                      PolarToRectangular </td>
    <td> New blocks to convert between rectangular and polar form
                      of space phasors.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Blocks.Routing.</strong></td></tr>
<tr><td> Replicator </td>
    <td> New block to replicate an input signal to many output signals.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Examples.</strong></td></tr>
<tr><td> AmplifierWithOpAmpDetailed<br>
                      HeatingResistor<br>
                      CompareTransformers<br>
                      OvervoltageProtection<br>
                      ControlledSwitchWithArc<br>
                      SwitchWithArc<br>
                      ThyristorBehaviourTest</td>
    <td> New examples to demonstrate the usage of new components.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Basic.</strong></td></tr>
<tr><td> OpAmpDetailed<br>
                      TranslationalEMF<br>
                      M_Transformer</td>
    <td> New detailed model of an operational amplifier.<br>
                      New electromotoric force from electrical energy into mechanical translational energy.<br>
                      Generic transformer with choosable number of inductors</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Ideal.</strong></td></tr>
<tr><td> OpenerWithArc<br>
                      CloserWithArc<br>
                      ControlledOpenerWithArc<br>
                      ControlledCloserWithArc</td>
    <td> New switches with simple arc model.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Interfaces.</strong></td></tr>
<tr><td> ConditionalHeatPort</td>
    <td> New partial model to add a conditional HeatPort to
                      an electrical component.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Lines.</strong></td></tr>
<tr><td> M_Oline</td>
    <td> New multiple line model, both the number of lines and the number of segments choosable.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Semiconductors.</strong></td></tr>
<tr><td> ZDiode<br>Thyristor</td>
    <td> Zener Diode with 3 working areas and simple thyristor model.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Polyphase.Ideal.</strong></td></tr>
<tr><td> OpenerWithArc<br>CloserWithArc</td>
    <td> New switches with simple arc model (as in Modelica.Electrical.Analog.Ideal.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.Examples.Elementary.</strong></td></tr>
<tr><td> RollingWheel<br>
                      RollingWheelSetDriving<br>
                      RollingWheelSetPulling</td>
    <td> New examples to demonstrate the usage of new components.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.Joints.</strong></td></tr>
<tr><td> RollingWheel<br>
                      RollingWheelSet</td>
    <td> New joints (no mass, no inertia) that describe an
                      ideal rolling wheel and a ideal rolling wheel set consisting
                      of two wheels rolling on the plane z=0.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.Parts.</strong></td></tr>
<tr><td> RollingWheel<br>
                      RollingWheelSet</td>
    <td> New ideal rolling wheel and ideal rolling wheel set consisting
                      of two wheels rolling on the plane z=0.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.Visualizers.</strong></td></tr>
<tr><td> Ground</td>
    <td> New model to visualize the ground (box at z=0).</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.Rotational.Interfaces.</strong></td></tr>
<tr><td> PartialElementaryOneFlangeAndSupport2<br>
                      PartialElementaryTwoFlangesAndSupport2</td>
    <td> New partial model with one and two flanges and the support flange
                      with a much simpler implementation as previously.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.Translational.Interfaces.</strong></td></tr>
<tr><td> PartialElementaryOneFlangeAndSupport2<br>
                      PartialElementaryTwoFlangesAndSupport2</td>
    <td> New partial model with one and two flanges and the support flange
                      with a much simpler implementation as previously.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Media.IdealGases.Common.MixtureGasNasa.</strong></td></tr>
<tr><td> setSmoothState</td>
    <td> Return thermodynamic state so that it smoothly approximates:
                      if x &gt; 0 then state_a else state_b.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Utilities.Internal.</strong></td></tr>
<tr><td> PartialModelicaServices</td>
    <td> New package containing the interface description of
                      models and functions that require a tool dependent
                      implementation (currently only \"Shape\" for 3-dim. animation,
                      but will be extended in the future)</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Thermal.HeatTransfer.Components.</strong></td></tr>
<tr><td> ThermalCollector</td>
    <td> New auxiliary model to collect the heat flows
                      from m heatports to a single heatport;
                      useful for polyphase resistors (with heatports)
                      as a junction of the m heatports.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Icons.</strong></td></tr>
<tr><td> VariantLibrary<br>
                      BaseClassLibrary<br>
                      ObsoleteModel</td>
    <td> New icons (VariantLibrary and BaseClassLibrary have been moved
                      from Modelica_Fluid.Icons to this place).</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.SIunits.</strong></td></tr>
<tr><td> ElectricalForceConstant </td>
    <td> New type added (#190).</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.SIunits.Conversions.</strong></td></tr>
<tr><td> from_Hz<br>
                      to_Hz</td>
    <td> New functions to convert between frequency [Hz] and
                      angular velocity [1/s]. (#156) </td></tr>

</table>

<p><br>
The following <font color=\"blue\"><strong>existing components</strong></font>
have been <font color=\"blue\"><strong>improved</strong></font> in a
<font color=\"blue\"><strong>backward compatible</strong></font> way:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Modelica.</strong></td></tr>
<tr><td> Blocks<br>Mechanics<br>StateGraph </td>
    <td> Provided missing parameter values for examples
                      (these parameters had only start values)</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Basic</strong></td></tr>
<tr><td> Resistor, Conductor, VariableResistor, VariableConductor</td>
    <td> Conditional heatport added for coupling to thermal network.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Ideal</strong></td></tr>
<tr><td> Thyristors, Switches, IdealDiode</td>
    <td> Conditional heatport added for coupling to thermal network.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Semiconductors</strong></td></tr>
<tr><td> Diode, ZDiode, PMOS, NMOS, NPN, PNP</td>
    <td> Conditional heatport added for coupling to thermal network.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Polyphase.Basic</strong></td></tr>
<tr><td> Resistor, Conductor, VariableResistor, VariableConductor</td>
    <td> Conditional heatport added for coupling to thermal network (as in Modelica.Electrical.Analog).</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Polyphase.Ideal</strong></td></tr>
<tr><td> Thyristors, Switches, IdealDiode</td>
    <td> Conditional heatport added for coupling to thermal network (as in Modelica.Electrical.Analog).</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.Visualizers.Advanced.</strong></td></tr>
<tr><td> Shape </td>
    <td> New implementation by inheriting from ModelicaServices. This allows a
                      tool vendor to provide its own implementation of Shape.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.StateGraph.</strong></td></tr>
<tr><td> Examples </td>
    <td> Introduced \"StateGraphRoot\" on the top level of all example models.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.StateGraph.Interfaces.</strong></td></tr>
<tr><td> StateGraphRoot<br>PartialCompositeStep<br>CompositeStepState </td>
    <td> Replaced the wrong Modelica code \"flow output Real xxx\"
                      by \"Real dummy; flow Real xxx;\".
                      As a side effect, several \"blocks\" had to be changed to \"models\".</td></tr>
<tr><td> PartialStep </td>
    <td> Changed model by packing the protected outer connector in to a model.
                      Otherwise, there might be differences in the sign of the flow variable
                      in Modelica 3.0 and 3.1.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Utilities.Examples.</strong></td></tr>
<tr><td> expression </td>
    <td> Changed local variable \"operator\" to \"opString\" since \"operator\"
                      is a reserved keyword in Modelica 3.1 </td></tr>
</table>

<p><br>
The following <font color=\"red\"><strong>uncritical errors</strong></font> have been fixed (i.e., errors
that do <font color=\"red\"><strong>not</strong></font> lead to wrong simulation results, but, e.g.,
units are wrong or errors in documentation):
</p>
<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Modelica.</strong></td></tr>
<tr><td> Many models</td>
    <td> Removed wrong usages of annotations fillColor and fillPattern
                      in text annotations (#155, #185).</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Machines</strong></td></tr>
<tr><td> All machine models</td>
    <td> The conditional heatports of the instantiated resistors
                        (which are new in Modelica.Electrical.Analog and Modelica.Electrical.Polyphase)
                        are finally switched off until a thermal connector design for machines is implemented.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Media.Air.MoistAir</strong></td></tr>
<tr><td> saturationPressureLiquid<br>
                      sublimationPressureIce<br>
                      saturationPressure</td>
          <td> For these three functions, an error in the <code>derivative</code> annotation was corrected. However, the effect of
                            this bug was minor, as a Modelica tool was allowed to compute derivatives automatically via
                            the <code>smoothOrder</code> annotation.</td>
</tr>
<tr><td colspan=\"2\"><strong>Modelica.Math.Matrices.</strong></td></tr>
<tr><td> eigenValues</td>
    <td> Wrong documentation corrected (#162)</td></tr>
</table>

</html>"));
end Version_3_1;

class Version_3_0_1 "Version 3.0.1 (Jan. 27, 2009)"
  extends Modelica.Icons.ReleaseNotes;

   annotation (Documentation(info="<html>

<p>
This Modelica package is provided under the Modelica License 2
and no longer under Modelica License 1.1. There are the following reasons
why the Modelica Association changes from Modelica License 1.1 to this
new license text (note, the text below is not a legal interpretation of the
Modelica License 2. In case of a conflict, the language of the license shall prevail):
</p>

<ol>
<li> The rights of licensor and licensee are much more clearly defined. For example:
         <ul>
         <li> The licensed work (Original Work) can be used in unmodified form in
                  open source and commercial software (the licensee cannot change the
                  license and the work must be provided without fees)</li>
         <li> If a model component is copied out of a Modelica package under
                  Modelica License 2 and is modified in order to adapt it to the needs
                  of the modeler, then the result can be licensed under any license
                  (including a commercial license).</li>
         <li> It is practically not possible to change the license of a
                  Modelica package under Modelica License 2 to another license, i.e., a
                  licensee cannot change the license by adding material or changing classes,
                  so the work must remain under Modelica License 2 (to be more precise,
                  if the licensee makes modifications to the Original Work \"which represents,
                  as a whole, an original work of authorship\", he/she can change the license
                  to another license. However, for a Modelica package this would
                  require a lot of changes which is usually unrealistic).</li>
         <li> If an executable is constructed using a Modelica package under
                  Modelica License 2, then this executable can be licensed under any
                  license (including a commercial license).</li>
         </ul>
         We hope that this compromise between open source contributors, commercial
         Modelica environments and Modelica users will motivate even more people to
         provide their Modelica packages freely under the Modelica License 2.<br><br></li>
<li> There are several new provisions that shall make law suites against licensors and licensees more unlikely (so the small risk is further reduced).</li>
</ol>

<p><br>
The following <font color=\"blue\"><strong>new components</strong></font> have been added
to <font color=\"blue\"><strong>existing</strong></font> libraries:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Electrical.Analog.Basic.</strong></td></tr>
<tr><td>M_Transformer</td>
          <td> Transformer, with the possibility to
        choose the number of inductors. The inductances and the coupled inductances
        can be chosen arbitrarily.</td></tr>

<tr><td colspan=\"2\"><strong>Electrical.Analog.Lines.</strong></td></tr>
<tr><td>M_OLine</td>
          <td> Segmented line model that enables the use of
        multiple lines, that means, the number of segments and the number of
        single lines can be chosen by the user. The model allows to investigate
        phenomena at multiple lines like mutual magnetic or capacitive influence.</td></tr>
<tr><td colspan=\"2\"><strong>Mechanics.Translational.Components.Examples.</strong></td></tr>
<tr><td>Brake</td>
          <td> Demonstrates the usage of the translational brake component.</td></tr>
<tr><td colspan=\"2\"><strong>Media.Interfaces.PartialMedium.</strong></td></tr>
<tr><td>ThermoStates</td>
          <td> Enumeration type for independent variables to identify the independent
                                                variables of the medium (pT, ph, phX, pTX, dTX).<br>
                                                An implementation of this enumeration is provided for every medium.
                                                (This is useful for fluid libraries that do not use the
                                                PartialMedium.BaseProperties model).</td></tr>
<tr><td>setSmoothState</td>
          <td> Function that returns the thermodynamic state which smoothly approximates:
                                                if x > 0 then state_a else state_b.<br>
                                                (This is useful for pressure drop components in fluid libraries
                                                 where the upstream density and/or viscosity has to be computed
                                                 and these properties should be smooth a zero mass flow rate)<br>
                                                An implementation of this function is provided for every medium.</td></tr>
<tr><td colspan=\"2\"><strong>Media.Common.</strong></td></tr>
<tr><td>smoothStep</td>
          <td> Approximation of a general step, such that the characteristic
                                                is continuous and differentiable.</td></tr>
<tr><td colspan=\"2\"><strong>Media.UsersGuide.</strong></td></tr>
<tr><td>Future</td>
          <td> Short description of goals and changes of upcoming release of Modelica.Media.</td></tr>
<tr><td colspan=\"2\"><strong>Media.Media.Air.MoistAir.</strong></td></tr>
<tr><td>isentropicExponent</td>
          <td> Implemented Missing Function from interface.</td></tr>
<tr><td>isentropicEnthalpyApproximation</td>
<td> Implemented function that approximates the isentropic enthalpy change.
This is only correct as long as there is no liquid in the stream.</td></tr>
</table>

<p><br>
The following <font color=\"blue\"><strong>existing components</strong></font>
have been <font color=\"blue\"><strong>changed</strong></font> (in a
<font color=\"blue\"><strong>backward compatible</strong></font> way):
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Mechanics.Rotational.Interfaces.</strong></td></tr>
<tr><td> PartialFriction </td>
          <td> Improvement of friction model so that in certain situations
                                                the number of iterations is much smaller.</td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.Translational.Components.Examples.</strong></td></tr>
<tr><td> Friction </td>
          <td> Added a third variant, where friction is modelled with
                                                the SupportFriction component.</td></tr>

<tr><td colspan=\"2\"><strong>Mechanics.Translational.Components.</strong></td></tr>
<tr><td> MassWithStopAndFriction </td>
          <td> Improvement of friction model so that in certain situations
                                                the number of iterations is much smaller.</td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.Translational.Interfaces.</strong></td></tr>
<tr><td> PartialFriction </td>
          <td> Improvement of friction model so that in certain situations
                                                the number of iterations is much smaller.</td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Examples.</strong></td></tr>
<tr><td> SimpleLiquidWater<br>
                                                IdealGasH20<br>
                                                WaterIF97<br>
                                                MixtureGases<br>
                                                MoistAir </td>
          <td> Added equations to test the new setSmoothState(..) functions
                                                including the analytic derivatives of these functions.</td></tr>

<tr><td colspan=\"2\"><strong>Media.Interfaces.PartialLinearFluid.</strong></td></tr>
<tr><td> setState_pTX<br>
                                                setState_phX<br>
                                                setState_psX<br>
                                                setState_dTX </td>
          <td> Rewritten function in one statement so that it is usually inlined.</td></tr>

<tr><td colspan=\"2\"><strong>Media.Interfaces.PartialLinearFluid.</strong></td></tr>
<tr><td> consistent use of reference_d instead of density(state </td>
          <td> Change was done to achieve consistency with analytic inverse functions.</td></tr>

<tr><td colspan=\"2\"><strong>Media.Air.MoistAir.</strong></td></tr>
<tr><td> T_phX </td>
          <td> Interval of nonlinear solver to compute T from p,h,X changed
                                                from 200..6000 to 240 ..400 K.</td></tr>

</table>

<p><br>
The following <font color=\"red\"><strong>critical errors</strong></font> have been fixed (i.e., errors
that can lead to wrong simulation results):
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Forces</strong></td></tr>
<tr><td> WorldTorque </td>
          <td> Parameter \"ResolveInFrame\" was not propagated and therefore
                                                always the default (resolved in world frame) was used, independently
                                                of the setting of this parameter.</td>
</tr>
<tr><td> WorldForceAndTorque </td>
          <td> Parameter \"ResolveInFrame\" was not propagated and therefore
                                                always the default (resolved in world frame) was used, independently
                                                of the setting of this parameter.<br>
                                                Furthermore, internally WorldTorque was used instead of
                                                Internal.BasicWorldTorque and therefore the visualization of
                                                worldTorque was performed twice.</td>
</tr>
<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Sensors</strong></td></tr>
<tr><td> AbsoluteSensor </td>
          <td> Velocity, acceleration and angular acceleration were computed
                                                  by differentiating in the resolveInFrame frame. This has been corrected, by
                                                  first transforming the vectors in to the world frame, differentiating here
                                                  and then transforming into resolveInFrame. The parameter in the Advanced menu
                                                  resolveInFrameAfterDifferentiation is then superfluous and was removed .</td>
</tr>
<tr><td> AbsoluteVelocity </td>
          <td> The velocity was computed
                                                  by differentiating in the resolveInFrame frame. This has been corrected, by
                                                  first transforming the velocity in to the world frame, differentiating here
                                                  and then transforming into resolveInFrame </td>
</tr>
<tr><td> RelativeSensor </td>
          <td> If resolveInFrame &lt;&gt; frame_resolve and
                                                   resolveInFrameAfterDifferentiation = frame_resolve, a translation
                                                error occurred, since frame_resolve was not enabled in this situation.
                                                This has been corrected.</td>
</tr>
<tr><td> RelativeVelocity </td>
          <td> The velocity has have been computed
                                                  by differentiating in the resolveInFrame frame. This has been corrected, by
                                                  first transforming the relative position in to frame_a, differentiating here
                                                  and then transforming into resolveInFrame </td>
</tr>
<tr><td> TransformRelativeVector </td>
          <td> The transformation was wrong, since the parameters frame_r_in and frame_r_out
                                                have not been propagated to the submodel that performs the transformation.
                                                This has been corrected.</td>
</tr>
<tr><td colspan=\"2\"><strong>Mechanics.Translational.Components.</strong></td></tr>
<tr><td> SupportFriction<br>
                                                Brake </td>
          <td> The sign of the friction force was wrong and therefore friction accelerated
                                                instead of decelerated. This was fixed.</td>
</tr>
<tr><td> SupportFriction</td>
          <td> The component was only correct for fixed support.
                                                This was corrected.</td>
</tr>
<tr><td colspan=\"2\"><strong>Media.Interfaces.</strong></td></tr>
<tr><td> PartialSimpleMedium<br>
                                                PartialSimpleIdealGasMedium </td>
          <td> BaseProperties.p was not defined as preferred state and BaseProperties.T was
                                                always defined as preferred state. This has been fixed by
                                                Defining p,T as preferred state if parameter preferredMediumState = true.
                                                This error had the effect that mass m is selected as state instead of p
                                                and if default initialization is used then m=0 could give not the expected
                                                behavior. This means, simulation is not wrong but the numerics is not as good
                                                and if a model relies on default initial values, the result could be not
                                                as expected.</td>
</tr>

</table>

<p><br>
The following <font color=\"red\"><strong>uncritical errors</strong></font> have been fixed (i.e., errors
that do <font color=\"red\"><strong>not</strong></font> lead to wrong simulation results, but, e.g.,
units are wrong or errors in documentation):
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Blocks.Math.</strong></td></tr>
<tr><td> InverseBlockConstraint </td>
          <td> Changed annotation preserveAspectRatio from true to false.</td>
</tr>

<tr><td colspan=\"2\"><strong>Blocks.Sources.</strong></td></tr>
<tr><td> RealExpression<br>
                                                IntegerExpression<br>
                                                BooleanExpression </td>
          <td> Changed annotation preserveAspectRatio from true to false.</td>
</tr>

<tr><td colspan=\"2\"><strong>Electrical.Analog.Basic.</strong></td></tr>
<tr><td> SaturatingInductor</td>
          <td> Replaced non-standard \"arctan\" by \"atan\" function.</td>
</tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Digital.</strong></td></tr>
<tr><td> UsersGuide</td>
          <td> Removed empty documentation placeholders and added the missing
                                                  release comment for version 1.0.7</td>
</tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.Translational.Components.</strong></td></tr>
<tr><td> MassWithStopAndFriction </td>
          <td> Changed usage of reinit(..), in order that it appears
                                                only once for one variable according to the language specification
                                                (if a tool could simulate the model, there is no difference).</td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Interfaces.PartialSimpleMedium</strong></td></tr>
<tr><td> pressure<br>
                                                temperature<br>
                                                density<br>
                                                specificEnthalpy </td>
          <td> Missing functions added.</td>
</tr>

</table>

</html>"));
end Version_3_0_1;

class Version_3_0 "Version 3.0 (March 1, 2008)"
  extends Modelica.Icons.ReleaseNotes;

   annotation (Documentation(info="<html>
<p>
Version 3.0 is <strong>not</strong> backward compatible to previous versions.
A conversion script is provided to transform models and libraries
of previous versions to the new version. Therefore, conversion
should be automatic.
</p>

<p>
The following changes are present for the whole library:
</p>

<ul>
<li> In the Modelica language version 3.0, several restrictions have been
         introduced to allow better checking, e.g., models on all levels must be balanced
         (number of equations = number of unknown variables - unknown variables that have
         to be defined when using the component). A few models of the Modelica
         Standard Library did not fulfill these new restrictions and had
         either to be moved to library <a href=\"https://github.com/modelica-deprecated/ObsoleteModelica3\">ObsoleteModelica3</a> (e.g., Blocks.Math.TwoInputs)
         or had to be differently implemented
         (e.g., Media.Interfaces.PartialMedium.BaseProperties).
         The Modelica Standard Library version 3.0 fulfills all the restrictions of
         the Modelica Language version 3.0.<br>&nbsp;
         </li>

<li> The graphical annotations describing the layout of icon and diagram layer
         are changed from Modelica language version 1 to Modelica language version 3.
         This gives several significant improvements:<br>Especially, the coordinate systems
         of icon and diagram layers are no longer coupled and therefore the size of the
         icon layer can be changed independently of the size of the diagram layer.
         Also it can be defined that the aspect ratio of a component icon is kept when changing
         its size in a model. This flag is set so that all icons of the Modelica
         Standard Library keep its aspect ratios. This is slightly non-backward compatible:
         If the aspect ratio was not kept when using a component from the Modelica
         Standard Library, it is now resized so that the aspect ratio is maintained.<br>&nbsp;</li>

<li> All non-standard annotations removed by:<br>
         (1) Removing the annotation since without effect
                 (e.g., \"__Dymola_experimentSetupOutput\", \"Window\", \"Terminal\" removed).<br>
         (2) Renaming the annotation to a standard name (e.g., \"Hide\" renamed to \"HideResult\").<br>
         (3) Renaming the annotation to a vendor specific name
                 (e.g., \"checkBox\" renamed to \"__Dymola_checkBox\").<br>&nbsp;</li>

<li> All emulated enumerations (defined via packages and constants) have been
         replaced by \"real\" enumerations. User models are automatically correctly
         converted, provided the user models used the package constants previously.
         <strong>Existing models that use directly literal values for enumerations, might give in
         some cases wrong results</strong> (if the first constant of the emulated enumeration
         had value zero, whereas the first value of an enumeration is one).<br>&nbsp;</li>

<li> The operator \"cardinality\" will be removed in one of the next versions of the
         Modelica language, since it is a reflective operator and its usage significantly
         reduces the possibilities of advanced model checks (e.g., to guarantee that a model
         is \"balanced\", i.e., the number of equations and unknowns is identical,
         for all valid usages of the component). As a preparation for this change, all
         models that contain the \"cardinality(..)\" operator are rewritten: If possible
         the operator is removed. If this is not possible, it is only used in asserts to
         check that, e.g., a connector is connected at least once or is connected exactly
         once. In the next Modelica language version new language elements will be introduced
         to specify such a property check without the cardinality operator. Once these
         language elements are available, the cardinality operator will be removed completely
         from the Modelica Standard Library.<br>
         The changes with respect to the cardinality(..) operator are usually not backward
         compatible. This is the reason for the changes of the
         Rotational and Translational library (see below).<br>&nbsp;</li>

<li> The design of the <strong>Rotational</strong> and <strong>Translational</strong> libraries have been changed
         (especially to remove the cardinality(..) operator, see above):
         <ul>
         <li> Components have a <strong>useSupport</strong> flag to enable or disable a support flange.
                  If the support flange is enabled, it must be connected. If it is disabled, it must
                  not be connected and the component is then internally grounded. The grounding
                  is visualized in the icon.</li>
         <li> The relative angle/distance and the relative speed of all force/torque elements
                  (that need the relative speed) are by default defined with \"StateSelect.prefer\", i.e.,
                  to use these variables as preferred states. This improves the numerics if the
                  absolute angle or the absolute distance are continuously increasing during
                  operation (e.g., driving shaft of the wheels of a car). The effect is that relative
                  angles/distances and speeds are used as states and the size of these variables is
                  limited. Previously, the default was to use the absolute angle/distance
                  and absolute speed of every inertia/mass which has the disadvantage that the absolute
                  angle and or distance are state variables that grow in size continuously.<br>
                  A significant advantage is also, that default initialization is usually better,
                  because a default value of zero for a relative angle/distance is usually what the
                  user would like to have. Previously, say, the load was initialized to a non-zero
                  angle and then the elastically coupled motor inertia had to be explicitly
                  also initialized with this value. This is now, no longer needed. Since the default
                  nominal value of 1 is usually too large for a relative quantity, the nominal
                  values of the relative angle/distance was changed to 1e-4.</li>
         <li> The two libraries have been restructured in sublibraries to cope
                  with the growing number of components.</li>
         <li> Finally, the Translational library has been
                  made as similar as possible to the Rotational library by, e.g., adding missing
                  components.<br>&nbsp;</li>
         </ul></li>

<li> The initialization of the MultiBody, Rotational and Translational libraries have
         been significantly simplified by removing the \"initType\" parameters and only
         using start/fixed values. This design assumes that a tool has special support
         for start/fixed values in the parameter menu.<br>&nbsp;</li>

<li> Nearly all parameters defined in the Modelica Standard Library had been
         defined with a default equation, e.g.,
         <blockquote><pre><strong>parameter</strong> Modelica.SIunits.Resistance R=1; </pre></blockquote>
         Physical parameters, such as a resistance, mass, gear ratio, do not have a meaningful
         default and in nearly all cases, the user of the corresponding component has to
         provide values for such parameters. If the user forgets this, a tool
         cannot provide diagnostics, since a default value is present in the library
         (such as 1 Ohm for the resistance). In most cases the model will simulate but will
         give wrong results due to wrong parameter values. To improve this situation, all physical
         parameter declarations in the Modelica Standard Library have been changed, so
         that the previous default becomes a start value. For example, the above
         declaration is changed to:
         <blockquote><pre><strong>parameter</strong> Modelica.SIunits.Resistance R(start=1);  </pre></blockquote>
         This is a backward compatible change and completely equivalent from the perspective
         of the Modelica language. It is, however, advised that tools will print a warning
         or optionally an error message, if the start value of a parameter is defined, but
         no value for the parameter is given via a modification. Furthermore, it is expected,
         that the input field of a parameter menu is empty, if no default equation is defined,
         but only a start value. This shows clearly to the modeler that a value has to
         be provided.</li>
</ul>

<p><br>
The following <font color=\"blue\"><strong>new components</strong></font> have been added
to <font color=\"blue\"><strong>existing</strong></font> libraries (note, the names in parentheses
are the new sublibrary names that are introduced in version 3.0):
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Blocks.Examples.</strong></td></tr>
<tr><td>InverseModel</td>
          <td> Demonstrates the construction of an inverse model.</td></tr>

<tr><td colspan=\"2\"><strong>Blocks.Math.</strong></td></tr>
<tr><td>InverseBlockConstraints</td>
          <td> Construct inverse model by requiring that two inputs
                                                and two outputs are identical (replaces the previously,
                                                unbalanced, TwoInputs and TwoOutputs blocks).</td></tr>

<tr><td colspan=\"2\"><strong>Electrical.Machines.Utilities</strong></td></tr>
<tr><td>TransformerData</td>
          <td> A record that calculates required impedances (parameters) from nominal data of transformers.</td></tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Examples.Rotational3DEffects</strong></td></tr>
<tr><td> GyroscopicEffects<br>
                                                ActuatedDrive<br>
                                                MovingActuatedDrive<br>
                                                GearConstraint </td>
          <td> New examples to demonstrate the usage of the Rotational library
                                                in combination with multi-body components.</td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Sensors</strong></td></tr>
<tr><td> AbsolutePosition<br>
                                                AbsoluteVelocity<br>
                                                AbsoluteAngles<br>
                                                AbsoluteAngularVelocity<br>
                                                RelativePosition<br>
                                                RelativeVelocity<br>
                                                RelativeAngles<br>
                                                RelativeAngularVelocity</td>
          <td> New sensors to measure one vector.</td>
</tr>
<tr><td> TransformAbsoluteVector<br>
                                                TransformRelativeVector</td>
          <td> Transform absolute and/or relative vector into another frame.</td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.Rotational.(Components)</strong></td></tr>
<tr><td> Disc </td>
          <td> Right flange is rotated by a fixed angle with respect to left flange</td></tr>
<tr><td> IdealRollingWheel </td>
          <td> Simple 1-dim. model of an ideal rolling wheel without inertia</td></tr>

<tr><td colspan=\"2\"><strong>Mechanics.Translational.Sensors</strong></td></tr>
<tr><td>RelPositionSensor<br>RelSpeedSensor<br>RelAccSensor<br>PowerSensor</td>
          <td> Relative position sensor, i.e., distance between two flanges<br>
                                                Relative speed sensor<br>
                                                Relative acceleration sensor<br>
                                                Ideal power sensor</td></tr>
<tr><td colspan=\"2\"><strong>Mechanics.Translational(.Components)</strong></td></tr>
<tr><td>SupportFriction<br>Brake<br>InitializeFlange</td>
          <td> Model of friction due to support<br>
                                                Model of a brake, base on Coulomb friction<br>
                                                Initializes a flange with pre-defined position, speed and acceleration .</td></tr>
<tr><td colspan=\"2\"><strong>Mechanics.Translational(.Sources)</strong></td></tr>
<tr><td>Force2<br>LinearSpeedDependentForce<br>QuadraticSpeedDependentForce<br>
                                           ConstantForce<br>ConstantSpeed<br>ForceStep</td>
          <td> Force acting on 2 flanges<br>
                                                Force linearly dependent on flange speed<br>
                                                Force quadratic dependent on flange speed<br>
                                                Constant force source<br>
                                                Constant speed source<br>
                                                Force step</td></tr>
</table>

<p><br>
The following <font color=\"blue\"><strong>existing components</strong></font>
have been <font color=\"blue\"><strong>changed</strong></font> in a
<font color=\"blue\"><strong>non-backward compatible</strong></font> way
(the conversion script transforms models and libraries
of previous versions to the new version. Therefore, conversion
should be automatic):
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Blocks.Continuous.</strong></td></tr>
<tr><td> CriticalDamping </td>
          <td> New parameter \"normalized\" to define whether filter is provided
                                                in normalized or non-normalized form. Default is \"normalized = true\".
                                                The previous implementation was a non-normalized filter.
                                                The conversion script automatically introduces the modifier
                                                \"normalized=false\" for existing models.</td></tr>

<tr><td colspan=\"2\"><strong>Blocks.Interfaces.</strong></td></tr>
<tr><td> RealInput<br>
                                                RealOutput</td>
          <td> Removed \"SignalType\", since extending from a replaceable class
                                                and this is not allowed in Modelica 3.<br>The conversion script
                                                removes modifiers to SignalType.</td></tr>

<tr><td> RealSignal<br>
                                                IntegerSignal<br>
                                                BooleanSignal</td>
          <td> Moved to library <a href=\"https://github.com/modelica-deprecated/ObsoleteModelica3\">ObsoleteModelica3</a>, since these connectors
                                                are no longer allowed in Modelica 3<br>
                                                (prefixes input and/or output are required).</td></tr>

<tr><td colspan=\"2\"><strong>Blocks.Interfaces.Adaptors.</strong></td></tr>
<tr><td> AdaptorReal<br>
                                                AdaptorBoolean<br>
                                                AdaptorInteger</td>
          <td> Moved to library <a href=\"https://github.com/modelica-deprecated/ObsoleteModelica3\">ObsoleteModelica3</a>, since the models are not \"balanced\".
                                                These are completely obsolete adaptors<br>between the Real, Boolean, Integer
                                                signal connectors of version 1.6 and version &ge; 2.1 of the Modelica
                                                Standard Library.</td></tr>

<tr><td colspan=\"2\"><strong>Blocks.Math.</strong></td></tr>
<tr><td> ConvertAllUnits</td>
          <td> Moved to library <a href=\"https://github.com/modelica-deprecated/ObsoleteModelica3\">ObsoleteModelica3</a>, since extending from a replaceable class
                                                and this is not allowed in Modelica 3.<br> It would be possible to rewrite this
                                                model to use a replaceable component. However, the information about the
                                                conversion<br> cannot be visualized in the icon in this case.</td></tr>

<tr><td colspan=\"2\"><strong>Blocks.Math.UnitConversions.</strong></td></tr>
<tr><td> TwoInputs<br>
                                                TwoOutputs</td>
          <td> Moved to library <a href=\"https://github.com/modelica-deprecated/ObsoleteModelica3\">ObsoleteModelica3</a>, since the models are not \"balanced\".
                                                A new component<br>\"InverseBlockConstraints\"
                                                is provided instead that has the same feature, but is \"balanced\".</td></tr>

<tr><td colspan=\"2\"><strong>Electrical.Analog.Basic.</strong></td></tr>
<tr><td> HeatingResistor</td>
          <td> The heatPort has to be connected; otherwise the component Resistor (without heatPort) has to be used.<br>
                                                cardinality() is only used to check whether the heatPort is connected.</td></tr>

<tr><td colspan=\"2\"><strong>Electrical.Polyphase.Examples.</strong></td></tr>
<tr><td> </td>
          <td> Changed the instance names of components used in the examples to more up-to-date style.</td></tr>

<tr><td colspan=\"2\"><strong>Electrical.Machines.</strong></td></tr>
<tr><td> </td>
          <td> Moved package <code>Machines.Examples.Utilities</code> to <code>Machines.Utilities</code></td></tr>
<tr><td> </td>
          <td> Removed all nonSIunits; especially in DCMachines<br>
                                                parameter NonSIunits.AngularVelocity_rpm rpmNominal was replaced by<br>
                                                parameter SIunits.AngularVelocity wNominal</td></tr>
<tr><td> </td>
          <td> Changed the following component variable and parameter names to be more concise:<br>
                                                Removed suffix \"DamperCage\" from all synchronous machines
                                                since the user can choose whether the damper cage is present or not.<br><code>
                                                RotorAngle ... RotorDisplacementAngle<br>
                                                J_Rotor ... Jr<br>
                                                Rr ........ Rrd (damper of synchronous machines)<br>
                                                Lrsigma ... Lrsigmad (damper of synchronous machines)<br>
                                                phi_mechanical ... phiMechanical<br>
                                                w_mechanical ..... wMechanical<br>
                                                rpm_mechanical ... rpmMechanical<br>
                                                tau_electrical ... tauElectrical<br>
                                                tau_shaft ........ tauShaft<br>
                                                TurnsRatio ....... turnsRatio    (AIMS)<br>
                                                VsNom ............ VsNominal     (AIMS)<br>
                                                Vr_Lr ............ VrLockedRotor (AIMS)<br>
                                                DamperCage ....... useDamperCage (synchronous machines)<br>
                                                V0 ............... VsOpenCicuit  (SMPM)<br>
                                                Ie0 .............. IeOpenCicuit  (SMEE)
                                                </code></td></tr>
<tr><td>Interfaces.</td>
          <td> Moved as much code as possible from specific machine models to partials to reduce redundant code.</td></tr>
<tr><td>Interfaces.Adapter</td>
          <td> Removed to avoid cardinality; instead, the following solution has been implemented:</td></tr>
<tr><td>Sensors.RotorDisplacementAngle<br>Interfaces.PartialBasicMachine</td>
          <td> Introduced <code>parameter Boolean useSupport=false \"enable / disable (=fixed stator) support\"</code><br>
                                                The rotational support connector is only present with <code>useSupport = true;</code><br>
                                                otherwise the stator is fixed internally.</td></tr>

<tr><td colspan=\"2\"><strong>Electrical.Machines.Examples.</strong></td></tr>
<tr><td> </td>
          <td> Changed the names of the examples to more meaningful names.<br>
                                                Changed the instance names of components used in the examples to more up-to-date style.</td></tr>
<tr><td>SMEE_Generator</td>
          <td> Initialization of <code>smee.phiMechanical</code> with <code>fixed=true</code></td></tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.</strong></td></tr>
<tr><td> World</td>
          <td> Changed default value of parameter driveTrainMechanics3D from false to true.<br>
                                                3-dim. effects in Rotor1D, Mounting1D and BevelGear1D are therefore taken<br>
                                                into account by default (previously this was only the case, if
                                                world.driveTrainMechanics3D was explicitly set).</td></tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Forces.</strong></td></tr>
<tr><td> FrameForce<br>
                                                FrameTorque<br>
                                                FrameForceAndTorque</td>
          <td> Models removed, since functionality now available via Force, Torque, ForceAndTorque</td></tr>
<tr><td> WorldForce<br>
                                                WorldTorque<br>
                                                WorldForceAndTorque<br>
                                                Force<br>
                                                Torque<br>
                                                ForceAndTorque</td>
          <td> Connector frame_resolve is optionally enabled via parameter resolveInFrame<br>.
                                                Forces and torques and be resolved in all meaningful frames defined
                                                by enumeration resolveInFrame.</td></tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Frames.</strong></td></tr>
<tr><td> length<br>
                                                normalize</td>
          <td> Removed functions, since available also in Modelica.Math.Vectors
                                                <br>The conversion script changes the references correspondingly.</td></tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Joints.</strong></td></tr>
<tr><td> Prismatic<br>
                                                ActuatedPrismatic<br>
                                                Revolute<br>
                                                ActuatedRevolute<br>
                                                Cylindrical<br>
                                                Universal<br>
                                                Planar<br>
                                                Spherical<br>
                                                FreeMotion</td>
          <td> Changed initialization, by replacing initial value parameters with
                                                start/fixed attributes.<br>
                                                When start/fixed attributes are properly supported
                                                in the parameter menu by a Modelica tool,<br>
                                                the initialization is considerably simplified for the
                                                user and the implementation is much simpler.<br>
                                                Replaced parameter \"enforceStates\" by the more general
                                                built-in enumeration stateSelect=StateSelection.xxx.<br>
                                                The conversion script automatically
                                                transforms from the \"old\" to the \"new\" forms.</td></tr>
<tr><td> Revolute<br>
                                                ActuatedRevolute</td>
          <td> Parameter \"planarCutJoint\" in the \"Advanced\" menu of \"Revolute\" and of
                                                \"ActuatedRevolute\" removed.<br>
                                                A new joint \"RevolutePlanarLoopConstraint\" introduced that defines the constraints
                                                of a revolute joint<br> as cut-joint in a planar loop.
                                                This change was needed in order that the revolute joint can be
                                                properly used<br>in advanced model checking.<br>
                                                ActuatedRevolute joint removed. Flange connectors of Revolute joint<br>
                                                can be enabled with parameter useAxisFlange.</td></tr>
<tr><td> Prismatic<br>
                                                ActuatedPrismatic</td>
          <td> ActuatedPrismatic joint removed. Flange connectors of Prismatic joint<br>
                                                can be enabled with parameter useAxisFlange.</td></tr>
<tr><td> Assemblies</td>
          <td> Assembly joint implementation slightly changed, so that
                                                annotation \"structurallyIncomplete\"<br>could be removed
                                                (all Assembly joint models are now \"balanced\").</td></tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Joints.Internal</strong></td></tr>
<tr><td> RevoluteWithLengthConstraint<br>
                                                PrismaticWithLengthConstraint</td>
          <td> These joints should not be used by a user of the MultiBody library.
                                                They are only provided to built-up the
                                                MultiBody.Joints.Assemblies.JointXYZ joints.
                                                These two joints have been changed in a slightly not backward compatible
                                                way, in order that the usage in the Assemblies.JointXYZ joints results in
                                                balanced models (<strong>no conversion is provided for this change since the
                                                user should not have used these joints and the conversion would be too
                                                complicated</strong>):
                                                In releases before version 3.0 of the Modelica Standard Library,
                                                it was possible to activate the torque/force projection equation
                                                (= cut-torque/-force projected to the rotation/translation
                                                axis must be identical to
                                                the drive torque/force of flange axis) via parameter <strong>axisTorqueBalance</strong>.
                                                This is no longer possible, since otherwise this model would not be
                                                \"balanced\" (= same number of unknowns as equations). Instead, when
                                                using this model in version 3.0 and later versions, the torque/force
                                                projection equation must be provided in the Advanced menu of joints
                                                Joints.SphericalSpherical and Joints.UniversalSpherical
                                                via the new parameter \"constraintResidue\".</td></tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Parts.</strong></td></tr>
<tr><td> BodyBox<br>
                                                BodyCylinder</td>
          <td> Changed unit of parameter density from g/cm3 to the SI unit kg/m3
                                                in order to allow stricter unit checking.<br>The conversion script multiplies
                                                previous density values with 1000.</td></tr>
<tr><td> Body<br>
                                                BodyShape<br>
                                                BodyBox<br>
                                                BodyCylinder<br>
                                                PointMass
                                                Rotor1D</td>
          <td> Changed initialization, by replacing initial value parameters with
                                                start/fixed attributes.<br>
                                                When start/fixed attributes are properly supported
                                                in the parameter menu by a Modelica tool,<br>
                                                the initialization is considerably simplified for the
                                                user and the implementation is much simpler.<br>The conversion script automatically
                                                transforms from the \"old\" to the \"new\" form of initialization.</td></tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Sensors.</strong></td></tr>
<tr><td> AbsoluteSensor<br>
                                                RelativeSensor<br>
                                                CutForceAndTorque</td>
          <td> New design of sensor components: Via Boolean parameters<br>
                                                signal connectors for the respective vectors are enabled/disabled.<br>
                                                It is not possible to automatically convert models to this new design.<br>
                                                Instead, references in existing models are changed to ObsoleteModelice3.<br>
                                                This means that these models must be manually adapted.</td></tr>
<tr><td> CutForce<br>
                                                CutTorque</td>
          <td> Slightly new design. The force and/or torque component can be
                                                resolved in world, frame_a, or frame_resolved.<br>
                                                Existing models are automatically converted.</td></tr>

<tr><td colspan=\"2\"><strong>Mechanics.Rotational.</strong></td></tr>
<tr><td> </td>
          <td> Moved components to structured sub-packages (Sources, Components)</td></tr>
<tr><td> Inertia<br>
                                                SpringDamper<br>
                                                RelativeStates</td>
          <td> Changed initialization, by replacing initial value parameters with
                                                start/fixed attributes.<br>
                                                When start/fixed attributes are properly supported
                                                in the parameter menu by a Modelica tool,<br>
                                                the initialization is considerably simplified for the
                                                user and the implementation is much simpler.<br>
                                                Parameter \"stateSelection\" in \"Inertia\" and \"SpringDamper\" replaced
                                                by the built-in enumeration<br>stateSelect=StateSelection.xxx.
                                                Introduced the \"stateSelect\" enumeration in \"RelativeStates\".<br>
                                                The conversion script automatically
                                                transforms from the \"old\" to the \"new\" forms.</td></tr>
<tr><td> LossyGear<br>
                                                GearBox</td>
          <td> Renamed gear ratio parameter \"i\" to \"ratio\", in order to have a
                                                consistent naming convention.<br>
                                                Existing models are automatically converted.</td></tr>
<tr><td> SpringDamper<br>
                                                ElastoBacklash<br>
                                                Clutch<br>
                                                OneWayClutch</td>
          <td> Relative quantities (phi_rel, w_rel) are used as states, if possible
                                                (due to StateSelect.prefer).<br>
                                                In most cases, relative states in drive trains are better suited as
                                                absolute states.<br> This change might give changes in the selected states
                                                of existing models.<br>
                                                This might give rise to problems if, e.g., the initialization was not
                                                completely defined in a user model,<br> since the default
                                                initialization heuristic may give different initial values.</td></tr>

<tr><td colspan=\"2\"><strong>Mechanics.Translational.</strong></td></tr>
<tr><td> </td>
          <td> Moved components to structured sub-packages (Sources, Components)</td></tr>
<tr><td> </td>
          <td> Adaptions corresponding to Rotational</td></tr>
<tr><td> Stop</td>
          <td> Renamed to Components.MassWithStopAndFriction to be more concise.<br>
                                                MassWithStopAndFriction is not available with a support connector,<br>
                                                since the reaction force can't be modeled in a meaningful way due to reinit of velocity v.<br>
                                                Until a sound implementation of a hard stop is available, the old model may be used.</td></tr>
<tr><td colspan=\"2\"><strong>Media.</strong></td></tr>
<tr><td> constant nX<br>
                                                constant nXi<br>
                                                constant reference_X<br>
                                                BaseProperties</td>
          <td> The package constant nX = nS, now always, even for single species media. This also allows to define mixtures with only 1 element. The package constant nXi=if fixedX then 0 else if reducedX or nS==1 then nS - 1 else nS. This required that all BaseProperties for single species media get an additional equation to define the composition X as {1.0} (or reference_X, which is {1.0} for single species). This will also mean that all user defined single species media need to be updated by that equation.</td></tr>

<tr><td colspan=\"2\"><strong>SIunits.</strong></td></tr>
<tr><td> CelsiusTemperature </td>
          <td> Removed, since no SI unit. The conversion script changes references to
                                                SIunits.Conversions.NonSIunits.Temperature_degC </td></tr>
<tr><td> ThermodynamicTemperature<br>
                                                TemperatureDifference</td>
          <td> Added annotation \"absoluteValue=true/false\"
                                                in order that unit checking is possible<br>
                                                (the unit checker needs to know for a unit that has an offset,
                                                whether it is used as absolute or as a relative number)</td></tr>

<tr><td colspan=\"2\"><strong>SIunits.Conversions.NonSIunits.</strong></td></tr>
<tr><td> Temperature_degC<br>
                                                Temperature_degF<br>
                                                Temperature_degRk </td>
          <td> Added annotation \"absoluteValue=true\"
                                                in order that unit checking is possible<br>
                                                (the unit checker needs to know for a unit that has an offset,
                                                whether it is used as absolute or as a relative number)</td></tr>

<tr><td colspan=\"2\"><strong>StateGraph.Examples.</strong></td></tr>
<tr><td> ControlledTanks </td>
          <td> The connectors of the ControlledTanks did not fulfill the new
                                                restrictions of Modelica 3. This has been fixed.</td></tr>
<tr><td> Utilities </td>
          <td> Replacing inflow, outflow by connectors inflow1, inflow2,
                                                outflow1, outflow2 with appropriate input/output prefixes in
                                                order to fulfill the restrictions of Modelica 3 to arrive
                                                at balanced models. No conversion is provided, since
                                                too difficult and since the non-backward compatible change is in
                                                an example.</td></tr>

<tr><td colspan=\"2\"><strong>Thermal.FluidHeatFlow.Sensors.</strong></td></tr>
<tr><td><br>
                                                pSensor<br>TSensor<br>dpSensor<br>dTSensor<br>m_flowSensor<br>V_flowSensor<br>H_flowSensor</td>
          <td> renamed to:<br>
                                                PressureSensor<br>TemperatureSensor<br>RelPressureSensor<br>RelTemperatureSensor<br>MassFlowSensor<br>VolumeFlowSensor<br>EnthalpyFlowSensor
                                                </td></tr>

<tr><td colspan=\"2\"><strong>Thermal.FluidHeatFlow.Sources.</strong></td></tr>
<tr><td> Ambient<br>PrescribedAmbient</td>
          <td> available as one combined component Ambient<br>
                                                Boolean parameters usePressureInput and useTemperatureInput decide
                                                whether pressure and/or temperature are constant or prescribed</td></tr>
<tr><td> ConstantVolumeFlow<br>PrescribedVolumeFlow</td>
          <td> available as one combined component VolumeFlow<br>
                                                Boolean parameter useVolumeFlowInput decides
                                                whether volume flow is constant or prescribed</td></tr>
<tr><td> ConstantPressureIncrease<br>PrescribedPressureIncrease</td>
          <td> available as one combined component PressureIncrease<br>
                                                Boolean parameter usePressureIncreaseInput decides
                                                whether pressure increase is constant or prescribed</td></tr>

<tr><td colspan=\"2\"><strong>Thermal.FluidHeatFlow.Examples.</strong></td></tr>
<tr><td> </td>
          <td> Changed the instance names of components used in the examples to more up-to-date style.</td></tr>

<tr><td colspan=\"2\"><strong>Thermal.HeatTransfer.(Components)</strong></td></tr>
<tr><td> HeatCapacitor</td>
          <td> Initialization changed: SteadyStateStart removed. Instead
                                                start/fixed values for T and der_T<br>(initial temperature and its derivative).</td></tr>

<tr><td><br><br>HeatCapacitor<br>ThermalConductor<br>ThermalConvection<br>BodyRadiation<br><br>
                                                TemperatureSensor<br>RelTemperatureSensor<br>HeatFlowSensor<br><br>
                                                FixedTemperature<br>PrescribedTemperature<br>FixedHeatFlow<br>PrescribedHeatFlow</td>
          <td> Moved components to sub-packages:<br><br>
                                                Components.HeatCapacitor<br>Components.ThermalConductor<br>Components.ThermalConvection<br>Components.BodyRadiation<br><br>
                                                Sensors.TemperatureSensor<br>Sensors.RelTemperatureSensor<br>Sensors.HeatFlowSensor<br><br>
                                                Sources.FixedTemperature<br>Sources.PrescribedTemperature<br>Sources.FixedHeatFlow<br>Sources.PrescribedHeatFlow
                                                </td></tr>

<tr><td colspan=\"2\"><strong>Thermal.FluidHeatFlow.Examples.</strong></td></tr>
<tr><td> </td>
          <td> Changed the instance names of components used in the examples to more up-to-date style.</td></tr>
</table>

<p><br>
The following <font color=\"blue\"><strong>existing components</strong></font>
have been <font color=\"blue\"><strong>improved</strong></font> in a
<font color=\"blue\"><strong>backward compatible</strong></font> way:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td> <strong>Modelica.*</strong> </td>
          <td> Parameter declarations, input and output function arguments without description
                                                strings improved<br> by providing meaningful description texts.
                                                </td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Blocks.Continuous.</strong></td></tr>
<tr><td> TransferFunction </td>
          <td> Internal scaling of the controller canonical states introduced
                                                in order to enlarge the range of transfer functions where the default
                                                relative tolerance of the simulator is sufficient.</td>
</tr>

<tr><td> Butterworth<br>CriticalDamping </td>
          <td> Documentation improved and plots of the filter characteristics added.</td></tr>

<tr><td colspan=\"2\"><strong>Electrical.Analog.Basic.</strong></td></tr>
<tr><td> EMF </td>
          <td> New parameter \"useSupport\" to optionally enable a support connector.</td></tr>

<tr><td colspan=\"2\"><strong>Icons.</strong></td></tr>
<tr><td> RectangularSensor<br>
                                                RoundSensor</td>
          <td> Removed drawing from the diagram layer (kept drawing only in
                                                icon layer),<br> in order that this icon can be used in situations
                                                where components are dragged in the diagram layer.</td></tr>

<tr><td colspan=\"2\"><strong>Math.Vectors.</strong></td></tr>
<tr><td> normalize</td>
          <td> Implementation changed, so that the result is always continuous<br>
                                                (previously, this was not the case for small vectors: normalize(eps,eps)).
                                                </td></tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.</strong></td></tr>
<tr><td> </td>
          <td> Renamed non-standard keywords defineBranch, defineRoot, definePotentialRoot,
                                                isRooted to the standard names:<br>
                                                Connections.branch/.root/.potentialRoot/.isRooted.</td></tr>
<tr><td> Frames </td>
          <td> Added annotation \"Inline=true\" to all one-line functions
                                                (which should be all inlined).</td></tr>
<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Parts.</strong></td></tr>
<tr><td> Mounting1D<br>
                                                Rotor1D<br>
                                                BevelGear1D</td>
          <td> Changed implementation so that no longer modifiers for connector
                                                variables are used,<br>because this violates the restrictions on
                                                \"balanced models\" of Modelica 3.</td></tr>

<tr><td colspan=\"2\"><strong>Mechanics.Rotational.</strong></td></tr>
<tr><td> InitializeFlange</td>
          <td> Changed implementation so that counting unknowns and
                                                equations is possible without actual values of parameters.</td></tr>

<tr><td colspan=\"2\"><strong>Thermal.FluidHeatFlow.Interfaces.</strong></td></tr>
<tr><td>TwoPort</td>
          <td> Introduced <code>parameter Real tapT(final min=0, final max=1)=1</code><br> that defines the temperature of the heatPort
                                                between inlet and outlet.</td></tr>

<tr><td colspan=\"2\"><strong>StateGraph.</strong></td></tr>
<tr><td> InitialStep<br>
                                                InitialStepWithSignal<br>
                                                Step<br>
                                                StepWithSignal</td>
          <td> Changed implementation so that no longer modifiers for output
                                                variables are used,<br>because this violates the restrictions on
                                                \"balanced models\" of Modelica 3.</td></tr>

</table>

<p><br>
The following <font color=\"red\"><strong>critical errors</strong></font> have been fixed (i.e., errors
that can lead to wrong simulation results):
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Electrical.Analog.Examples.</strong></td></tr>
<tr><td> CauerLowPassSC </td>
          <td> Wrong calculation of Capacitor1 both in Rn and Rp corrected
                                                (C=clock/R instead of C=clock*R) </td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Parts.</strong></td></tr>
<tr><td> Rotor1D </td>
          <td> The 3D reaction torque was not completely correct and gave in
                                                some situations a wrong result. This bug should not influence the
                                                movement of a multi-body system, but only the constraint torques
                                                are sometimes not correct.</td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.Rotational.</strong></td></tr>
<tr><td> ElastoBacklash </td>
          <td> If the damping torque was too large, the reaction torque
                                                could \"pull\" which is unphysical. The component was
                                                newly written by limiting the damping torque in such a case
                                                so that \"pulling\" torques can no longer occur. Furthermore,
                                                during initialization the characteristics is made continuous
                                                to reduce numerical errors. The relative angle and relative
                                                angular velocities are used as states, if possible
                                                (StateSelect.prefer), since relative quantities lead usually
                                                to better behavior.  </td>
</tr>
<tr><td> Position<br>Speed<br>Accelerate<br>Move</td>
          <td> The movement of the flange was wrongly defined as absolute;
                                                this is corrected as relative to connector support.<br>
                                                For Accelerate, it was necessary to rename
                                                RealInput a to a_ref, as well as the start values
                                                phi_start to phi.start and w_start to w.start.
                                                The conversion script performs the necessary conversion of
                                                existing models automatically.</td>
</tr>
<tr><td colspan=\"2\"><strong>Media.Interfaces.</strong></td></tr>
<tr><td> PartialSimpleIdealGasMedium </td>
          <td> Inconsistency in reference temperature corrected. This may give
                                                different results for functions:<br>
                                                specificEnthalpy, specificInternalEnergy, specificGibbsEnergy,
                                                specificHelmholtzEnergy.</td>
</tr>
<tr><td colspan=\"2\"><strong>Media.Air.</strong></td></tr>
<tr><td> specificEntropy </td>
          <td> Small bug in entropy computation of ideal gas mixtures corrected.</td>
</tr>
<tr><td colspan=\"2\"><strong>Media.IdealGases.Common.MixtureGasNasa</strong></td></tr>
<tr><td> specificEntropy </td>
          <td> Small bug in entropy computation of ideal gas mixtures corrected.</td>
</tr>
</table>

<p><br>
The following <font color=\"red\"><strong>uncritical errors</strong></font> have been fixed (i.e., errors
that do <font color=\"red\"><strong>not</strong></font> lead to wrong simulation results, but, e.g.,
units are wrong or errors in documentation):
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Blocks.Tables.</strong></td></tr>
<tr><td> CombiTable2D</td>
          <td> Documentation improved.</td>
</tr>

<tr><td colspan=\"2\"><strong>Electrica.Digital.Gates</strong></td></tr>
<tr><td> AndGate<br>
                                                NandGate<br>
                                                OrGate<br>
                                                NorGate<br>
                                                XorGate<br>
                                                XnorGate</td>
          <td> The number of inputs was not correctly propagated
                                                to the included base model.<br>
                                                This gave a translation error, if the number
                                                of inputs was changed (and not the default used).</td>
</tr>

<tr><td colspan=\"2\"><strong>Electrica.Digital.Sources</strong></td></tr>
<tr><td> Pulse </td>
          <td> Model differently implemented, so that
                                                warning message about \"cannot properly initialize\" is gone.</td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.Rotational.</strong></td></tr>
<tr><td> BearingFriction<br>
                                                Clutch<br>
                                                OneWayClutch<br>
                                                Brake<br>
                                                Gear </td>
          <td> Declaration of table parameter changed from
                                                table[:,:] to table[:,2].</td>
</tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.Examples.Loops.Utilities.</strong></td></tr>
<tr><td> GasForce </td>
          <td> Unit of variable \"press\" corrected (from Pa to bar)</td>
</tr>

<tr><td colspan=\"2\"><strong>StateGraph.Examples.</strong></td></tr>
<tr><td>SimpleFriction</td>
          <td> The internal parameter k is defined and calculated with the appropriate unit.</td></tr>

<tr><td colspan=\"2\"><strong>Thermal.FluidHeatFlow.Interfaces.</strong></td></tr>
<tr><td>SimpleFriction</td>
          <td> The internal parameter k is defined and calculated with the appropriate unit.</td></tr>

</table>

</html>"));
end Version_3_0;

class Version_2_2_2 "Version 2.2.2 (Aug. 31, 2007)"
  extends Modelica.Icons.ReleaseNotes;

   annotation (Documentation(info="<html>
<p>
Version 2.2.2 is backward compatible to version 2.2.1 and 2.2 with
the following exceptions:
</p>
<ul>
<li> Removal of package Modelica.Media.Interfaces.PartialTwoPhaseMediumWithCache
         (this was not yet utilized).</li>
<li> Removal of the media packages in
         Modelica.Media.IdealGases.SingleGases that are not type compatible
         to Modelica.Media.Interfaces.PartialMedium, because a FluidConstants
         record definition is missing,
         for details, see
          <a href=\"modelica://Modelica.Media.IdealGases\">Modelica.Media.IdealGases</a>
         (this is seen as a bug fix).</li>
</ul>

<p>
An overview of the differences between version 2.2.2 and the previous
version 2.2.1 is given below. The exact differences (but without
differences in the documentation) are available in
<a href=\"modelica://Modelica/Resources/Documentation/Differences-Modelica-221-222.html\">Differences-Modelica-221-222.html</a>.
This comparison file was generated automatically with Dymola's
ModelManagement.compare function.
</p>

<p>
In this version, <strong>no</strong> new libraries have been added. The <strong>documentation</strong>
of the whole library was improved.
</p>

<p><br>
The following <font color=\"blue\"><strong>new components</strong></font> have been added
to <font color=\"blue\"><strong>existing</strong></font> libraries:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Blocks.Logical.</strong></td></tr>
<tr><td> TerminateSimulation</td>
          <td> Terminate a simulation by a given condition.</td>
</tr>

<tr><td colspan=\"2\"><strong>Blocks.Routing.</strong></td></tr>
<tr><td> RealPassThrough<br>
                   IntegerPassThrough<br>
                   BooleanPassThrough</td>
          <td> Pass a signal from input to output
                   (useful in combination with a bus due to restrictions
                   of expandable connectors).</td>
</tr>

<tr><td colspan=\"2\"><strong>Blocks.Sources.</strong></td></tr>
<tr><td> KinematicPTP2 </td>
          <td> Directly gives q,qd,qdd as output (and not just qdd as KinematicPTP).
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Electrical.Machines.Examples.</strong></td></tr>
<tr><td> TransformerTestbench </td>
          <td> Transformer Testbench
          </td></tr>
<tr><td> Rectifier6pulse </td>
          <td> 6-pulse rectifier with 1 transformer
          </td>
</tr>
<tr><td> Rectifier12pulse </td>
          <td> 12-pulse rectifier with 2 transformers
          </td>
</tr>
<tr><td> AIMC_Steinmetz </td>
          <td> Induction machine squirrel cage with Steinmetz connection
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Electrical.Machines.BasicMachines.Components.</strong></td></tr>
<tr><td> BasicAIM </td>
          <td> Partial model for induction machine
          </td></tr>
<tr><td> BasicSM </td>
          <td> Partial model for synchronous machine
          </td></tr>
<tr><td> PartialAirGap </td>
          <td> Partial air gap model
          </td></tr>
<tr><td> BasicDCMachine </td>
          <td> Partial model for DC machine
          </td></tr>
<tr><td> PartialAirGapDC </td>
          <td> Partial air gap model of a DC machine
          </td></tr>
<tr><td> BasicTransformer </td>
          <td> Partial model of three-phase transformer
          </td></tr>
<tr><td> PartialCore </td>
          <td> Partial model of transformer core with 3 windings
          </td></tr>
<tr><td> IdealCore </td>
          <td> Ideal transformer with 3 windings
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Electrical.Machines.BasicMachines.</strong></td></tr>
<tr><td> Transformers </td>
          <td> Sub-Library for technical 3phase transformers
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Electrical.Machines.Interfaces.</strong></td></tr>
<tr><td> Adapter </td>
          <td> Adapter to model housing of electrical machine
          </td>
</tr>
<tr><td colspan=\"2\"><strong>Math.</strong></td></tr>
<tr><td> Vectors </td>
          <td> New library of functions operating on vectors
          </td>
</tr>
<tr><td> atan3 </td>
          <td> Four quadrant inverse tangent (select solution that is closest to given angle y0)
          </td>
</tr>
<tr><td> asinh </td>
          <td> Inverse of sinh (area hyperbolic sine)
          </td>
</tr>
<tr><td> acosh </td>
          <td> Inverse of cosh (area hyperbolic cosine)
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Math.Vectors</strong></td></tr>
<tr><td> isEqual </td>
          <td> Determine if two Real vectors are numerically identical
          </td>
</tr>
<tr><td> norm </td>
          <td> Return the p-norm of a vector
          </td></tr>
<tr><td> length </td>
          <td> Return length of a vector (better as norm(), if further symbolic processing is performed)
          </td></tr>
<tr><td> normalize </td>
          <td> Return normalized vector such that length = 1 and prevent zero-division for zero vector
          </td></tr>
<tr><td> reverse </td>
          <td> Reverse vector elements (e.g., v[1] becomes last element)
          </td></tr>
<tr><td> sort </td>
          <td> Sort elements of vector in ascending or descending order
          </td></tr>

<tr><td colspan=\"2\"><strong>Math.Matrices</strong></td></tr>
<tr><td> solve2 </td>
          <td> Solve real system of linear equations A*X=B with a B matrix
                   (Gaussian elimination with partial pivoting)
          </td>
</tr>
<tr><td> LU_solve2 </td>
          <td> Solve real system of linear equations P*L*U*X=B with a B matrix
                   and an LU decomposition (from LU(..))
          </td></tr>

<tr><td colspan=\"2\"><strong>Mechanics.Rotational.</strong></td></tr>
<tr><td> InitializeFlange </td>
          <td> Initialize a flange according to given signals
                   (useful if initialization signals are provided by a signal bus).
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Interfaces.PartialMedium.</strong></td></tr>
<tr><td> density_pTX </td>
          <td> Return density from p, T, and X or Xi
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Interfaces.PartialTwoPhaseMedium.</strong></td></tr>
<tr><td> BaseProperties </td>
          <td> Base properties (p, d, T, h, u, R, MM, x) of a two phase medium
          </td>
</tr>
<tr><td> molarMass </td>
          <td> Return the molar mass of the medium
          </td>
</tr>
<tr><td> saturationPressure_sat </td>
          <td> Return saturation pressure
          </td>
</tr>
<tr><td> saturationTemperature_sat </td>
          <td> Return saturation temperature
          </td>
</tr>
<tr><td> saturationTemperature_derp_sat </td>
          <td> Return derivative of saturation temperature w.r.t. pressure
          </td>
</tr>  <tr><td> setState_px </td>
          <td> Return thermodynamic state from pressure and vapour quality
          </td>
</tr>  <tr><td> setState_Tx </td>
          <td> Return thermodynamic state from temperature and vapour quality
          </td>
</tr>  <tr><td> vapourQuality </td>
          <td> Return vapour quality
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Interfaces.</strong></td></tr>
<tr><td> PartialLinearFluid </td>
          <td> Generic pure liquid model with constant cp,
                   compressibility and thermal expansion coefficients
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Air.MoistAir.</strong></td></tr>
<tr><td> massFraction_pTphi </td>
          <td> Return the steam mass fraction from relative humidity and T
          </td>
</tr>
<tr><td> saturationTemperature </td>
          <td> Return saturation temperature from (partial) pressure
                   via numerical inversion of function saturationPressure
          </td>
</tr>
<tr><td> enthalpyOfWater </td>
          <td> Return specific enthalpy of water (solid/liquid) near
                   atmospheric pressure from temperature
          </td>
</tr>
<tr><td> enthalpyOfWater_der </td>
          <td> Return derivative of enthalpyOfWater()\" function
          </td>
</tr>
<tr><td> PsychrometricData </td>
          <td> Model to generate plot data for psychrometric chart
          </td>
</tr>
<tr><td colspan=\"2\"><strong>Media.CompressibleLiquids.</strong><br>
          New sub-library for simple compressible liquid models</td></tr>
<tr><td> LinearColdWater </td>
          <td> Cold water model with linear compressibility
          </td>
</tr>
<tr><td> LinearWater_pT_Ambient </td>
          <td> Liquid, linear compressibility water model at 1.01325 bar
                   and 25 degree Celsius
          </td>
</tr>
<tr><td colspan=\"2\"><strong>SIunits.</strong></td></tr>
<tr><td> TemperatureDifference </td>
          <td> Type for temperature difference
          </td>
</tr>
</table>

<p><br>
The following <font color=\"blue\"><strong>existing components</strong></font>
have been <font color=\"blue\"><strong>improved</strong></font>:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Blocks.Examples.</strong></td></tr>
<tr><td> BusUsage</td>
          <td> Example changed from the \"old\" to the \"new\" bus concept with
                   expandable connectors.</td></tr>

<tr><td colspan=\"2\"><strong>Blocks.Discrete.</strong></td></tr>
<tr><td> ZeroOrderHold</td>
          <td> Sample output ySample moved from \"protected\" to \"public\"
                   section with new attributes (start=0, fixed=true).
          </td>
</tr>
<tr><td> TransferFunction</td>
          <td> Discrete state x with new attributes (each start=0, each fixed=0).
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Electrical.</strong></td></tr>
<tr><td> Analog<br>Polyphase</td>
          <td> Improved some icons.
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Electrical.Digital.Interfaces.</strong></td></tr>
<tr><td> MISO</td>
          <td> Removed \"algorithm\" from this partial block.
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Electrical.Digital.Delay.</strong></td></tr>
<tr><td> DelayParams</td>
          <td> Removed \"algorithm\" from this partial block.
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Electrical.Digital.Delay.</strong></td></tr>
<tr><td> DelayParams</td>
          <td> Removed \"algorithm\" from this partial block.
          </td>
</tr>
<tr><td> TransportDelay</td>
          <td>  If delay time is zero, an infinitely small delay is
                        introduced via pre(x) (previously \"x\" was used).
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Electrical.Digital.Sources.</strong></td></tr>
<tr><td> Clock<br>Step</td>
          <td> Changed if-conditions from \"xxx < time\" to \"time >= xxx\"
                   (according to the Modelica specification, in the second case
                   a time event should be triggered, i.e., this change leads
                   potentially to a faster simulation).
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Electrical.Digital.Converters.</strong></td></tr>
<tr><td> BooleanToLogic<br>
                   LogicToBoolean<br>
                   RealToLogic<br>
                   LogicToReal</td>
          <td> Changed from \"algorithm\" to \"equation\" section
                   to allow better symbolic preprocessing
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Electrical.</strong></td></tr>
<tr><td> Machines</td>
          <td> Slightly improved documentation, typos in
                   documentation corrected
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Electrical.Machines.Examples.</strong></td></tr>
<tr><td> AIMS_start</td>
          <td> Changed QuadraticLoadTorque1(TorqueDirection=true) to
                   QuadraticLoadTorque1(TorqueDirection=false) since more realistic
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Electrical.Machines.Interfaces.</strong></td></tr>
<tr><td> PartialBasicMachine</td>
          <td> Introduced support flange to model the
                   reaction torque to the housing
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Electrical.Machines.Sensors.</strong></td></tr>
<tr><td> Rotorangle</td>
          <td> Introduced support flange to model the
                   reaction torque to the housing
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Examples.Elementary.</strong></td></tr>
<tr><td> PointMassesWithGravity</td>
          <td> Added two point masses connected by a line force to demonstrate
                   additionally how this works. Connections of point masses
                   with 3D-elements are demonstrated in the new example
                   PointMassesWithGravity (there is the difficulty that the orientation
                   is not defined in a PointMass object and therefore some
                   special handling is needed in case of a connection with
                   3D-elements, where the orientation of the point mass is not
                   determined by these elements.</td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Examples.Systems.</strong></td></tr>
<tr><td> RobotR3</td>
          <td> Changed from the \"old\" to the \"new\" bus concept with expandable connectors.
                   Replaced the non-standard Modelica function \"constrain()\" by
                   standard Modelica components. As a result, the non-standard function
                   constrain() is no longer used in the Modelica Standard Library.</td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Frames.Orientation.</strong></td></tr>
<tr><td> equalityConstraint</td>
          <td> Use a better residual for the equalityConstraint function.
                   As a result, the non-linear equation system of a kinematic
                   loop is formulated in a better way (the range where the
                   desired result is a unique solution of the non-linear
                   system of equations becomes much larger).</td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.</strong></td></tr>
<tr><td> Visualizers.</td>
          <td> Removed (misleading) annotation \"structurallyIncomplete\"
                   in the models of this sub-library
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.Rotational.</strong></td></tr>
<tr><td> Examples</td>
          <td> For all models in this sub-library:
                   <ul>
                   <li> Included a housing object in all examples to compute
                                all support torques.</li>
                   <li> Replaced initialization by modifiers via the
                                initialization menu parameters of Inertia components.</li>
                   <li> Removed \"encapsulated\" and unnecessary \"import\".</li>
                   <li> Included \"StopTime\" in the annotations.</li>
                   </ul>
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.Rotational.Interfaces.</strong></td></tr>
<tr><td> FrictionBase</td>
          <td> Introduced \"fixed=true\" for Boolean variables startForward,
                   startBackward, mode.
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.Translational.Interfaces.</strong></td></tr>
<tr><td> FrictionBase</td>
          <td> Introduced \"fixed=true\" for Boolean variables startForward,
                   startBackward, mode.
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.UsersGuide.MediumUsage.</strong></td></tr>
<tr><td> TwoPhase</td>
          <td> Improved documentation and demonstrating the newly introduced functions
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Examples.</strong></td></tr>
<tr><td> WaterIF97</td>
          <td> Provided (missing) units for variables V, dV, H_flow_ext, m, U.
          </td>
</tr>

<tr><td colspan=\"2\"><strong> Media.Interfaces.</strong></td></tr>
<tr><td> PartialMedium</td>
          <td> Final modifiers are removed from nX and nXi, to allow
                   customized medium models such as mixtures of refrigerants with oil, etc.
          </td>
</tr>
<tr><td> PartialCondensingGases</td>
          <td> Included attributes \"min=1, max=2\" for input argument FixedPhase
                   for functions setDewState and setBubbleState (in order to guarantee
                   that input arguments are correct).
          </td>
</tr>

<tr><td colspan=\"2\"><strong> Media.Interfaces.PartialMedium.</strong></td></tr>
<tr><td> BaseProperties</td>
          <td> New Boolean parameter \"standardOrderComponents\".
                   If true, last element vector X is computed from 1-sum(Xi) (= default)
                   otherwise, no equation is provided for it in PartialMedium.
          </td>
</tr>
<tr><td> IsentropicExponent</td>
          <td> \"max\" value changed from 1.7 to 500000
          </td>
</tr>
<tr><td> setState_pTX<br>
                   setState_phX<br>
                   setState_psX<br>
                   setState_dTX<br>
                   specificEnthalpy_pTX<br>
                   temperature_phX<br>
                   density_phX<br>
                   temperature_psX<br>
                   density_psX<br>
                   specificEnthalpy_psX</td>
          <td> Introduced default value \"reference_X\" for input argument \"X\".
          </td>
</tr>

<tr><td colspan=\"2\"><strong> Media.Interfaces.PartialSimpleMedium.</strong></td></tr>
<tr><td> setState_pTX<br>
                   setState_phX<br>
                   setState_psX<br>
                   setState_dTX</td>
          <td> Introduced default value \"reference_X\" for input argument \"X\".
          </td>
</tr>

<tr><td colspan=\"2\"><strong> Media.Interfaces.PartialSimpleIdealGasMedium.</strong></td></tr>
<tr><td> setState_pTX<br>
                   setState_phX<br>
                   setState_psX<br>
                   setState_dTX</td>
          <td> Introduced default value \"reference_X\" for input argument \"X\".
          </td>
</tr>

<tr><td colspan=\"2\"><strong> Media.Air.MoistAir.</strong></td></tr>
<tr><td> setState_pTX<br>
                   setState_phX<br>
                   setState_dTX</td>
          <td> Introduced default value \"reference_X\" for input argument \"X\".
          </td>
</tr>

<tr><td colspan=\"2\"><strong> Media.IdealGases.Common.SingleGasNasa.</strong></td></tr>
<tr><td> setState_pTX<br>
                   setState_phX<br>
                   setState_psX<br>
                   setState_dTX</td>
          <td> Introduced default value \"reference_X\" for input argument \"X\".
          </td>
</tr>

<tr><td colspan=\"2\"><strong> Media.IdealGases.Common.MixtureGasNasa.</strong></td></tr>
<tr><td> setState_pTX<br>
                   setState_phX<br>
                   setState_psX<br>
                   setState_dTX<br>
                   h_TX</td>
          <td> Introduced default value \"reference_X\" for input argument \"X\".
          </td>
</tr>

<tr><td colspan=\"2\"><strong> Media.Common.</strong></td></tr>
<tr><td> IF97PhaseBoundaryProperties<br>
                   gibbsToBridgmansTables </td>
          <td> Introduced unit for variables vt, vp.
          </td>
</tr>
<tr><td> SaturationProperties</td>
          <td> Introduced unit for variable dpT.
          </td>
</tr>
<tr><td> BridgmansTables</td>
          <td> Introduced unit for dfs, dgs.
          </td>
</tr>

<tr><td colspan=\"2\"><strong> Media.Common.ThermoFluidSpecial.</strong></td></tr>
<tr><td> gibbsToProps_ph<br>
                   gibbsToProps_ph<br>
                   gibbsToBoundaryProps<br>
                   gibbsToProps_dT<br>
                   gibbsToProps_pT</td>
          <td> Introduced unit for variables vt, vp.
          </td></tr>
<tr><td> TwoPhaseToProps_ph</td>
          <td> Introduced unit for variables dht, dhd, detph.
          </td>
</tr>

<tr><td colspan=\"2\"><strong> Media.</strong></td></tr>
<tr><td> MoistAir</td>
          <td> Documentation of moist air model significantly improved.
          </td>
</tr>

<tr><td colspan=\"2\"><strong> Media.MoistAir.</strong></td></tr>
<tr><td> enthalpyOfVaporization</td>
          <td> Replaced by linear correlation since simpler and more
                   accurate in the entire region.
          </td>
</tr>

<tr><td colspan=\"2\"><strong> Media.Water.IF97_Utilities.BaseIF97.Regions.</strong></td></tr>
<tr><td> drhovl_dp</td>
          <td> Introduced unit for variable dd_dp.
          </td>
</tr>

<tr><td colspan=\"2\"><strong> Thermal.</strong></td></tr>
<tr><td> FluidHeatFlow</td>
          <td> Introduced new parameter tapT (0..1) to define the
                   temperature of the HeatPort as linear combination of the
                   flowPort_a (tapT=0) and flowPort_b (tapT=1) temperatures.
          </td>
</tr>
</table>

<p><br>
The following <font color=\"red\"><strong>critical errors</strong></font> have been fixed (i.e., errors
that can lead to wrong simulation results):
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Electrical.Machines.BasicMachines.Components.</strong></td></tr>
<tr><td> ElectricalExcitation</td>
          <td> Excitation voltage ve is calculated as
                   \"spacePhasor_r.v_[1]*TurnsRatio*3/2\" instead of
                   \"spacePhasor_r.v_[1]*TurnsRatio
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Parts.</strong></td></tr>
<tr><td> FixedRotation</td>
          <td> Bug corrected that the torque balance was wrong in the
                   following cases (since vector r was not transformed
                   from frame_a to frame_b; note this special case occurs very seldom in practice):
                   <ul><li> frame_b is in the spanning tree closer to the root
                                        (usually this is frame_a).</li>
                           <li> vector r from frame_a to frame_b is not zero.</li>
                   </ul>
           </td>
</tr>

<tr><td> PointMass</td>
         <td> If a PointMass model is connected so that no equations are present
                  to compute its orientation object, the orientation was arbitrarily
                  set to a unit rotation. In some cases this can lead to a wrong overall
                  model, depending on how the PointMass model is used. For this reason,
                  such cases lead now to an error (via an assert(..)) with an explanation
                  how to fix this.
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Interfaces.PartialPureSubstance.</strong></td></tr>
<tr><td> pressure_dT<br>
                   specificEnthalpy_dT
          </td>
          <td> Changed wrong call from \"setState_pTX\" to \"setState_dTX\"
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Interfaces.PartialTwoPhaseMedium.</strong></td></tr>
<tr><td> pressure_dT<br>
                   specificEnthalpy_dT
          </td>
          <td> Changed wrong call from \"setState_pTX\" to \"setState_dTX\"
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Common.ThermoFluidSpecial.</strong></td></tr>
<tr><td> gibbsToProps_dT<br>
                   helmholtzToProps_ph<br>
                   helmholtzToProps_pT<br>
                   helmholtzToProps_dT</td>
          <td> Bugs in equations corrected </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Common.</strong></td></tr>
<tr><td> helmholtzToBridgmansTables<br>
                   helmholtzToExtraDerivs</td>
          <td> Bugs in equations corrected </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.IdealGases.Common.SingleGasNasa.</strong></td></tr>
<tr><td> density_derp_T</td>
          <td> Bug in equation of partial derivative corrected </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Water.IF97_Utilities.</strong></td></tr>
<tr><td> BaseIF97.Inverses.dtofps3<br>
                   isentropicExponent_props_ph<br>
                   isentropicExponent_props_pT<br>
                   isentropicExponent_props_dT</td>
          <td> Bugs in equations corrected </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Air.MoistAir.</strong></td></tr>
<tr><td> h_pTX</td>
          <td> Bug in setState_phX due to wrong vector size in h_pTX corrected.
                   Furthermore, syntactical errors corrected:
                   <ul><li> In function massFractionpTphi an equation
                                        sign is used in an algorithm.</li>
                           <li> Two consecutive semicolons removed</li>
                   </ul>
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Water.</strong></td></tr>
<tr><td> waterConstants</td>
          <td> Bug in equation of criticalMolarVolume corrected.
          </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Water.IF97_Utilities.BaseIF97.Regions.</strong></td></tr>
<tr><td> region_ph<br>
                   region_ps</td>
          <td> Bug in region determination corrected.
          </td>
</tr>

<tr><td> boilingcurve_p<br>
                   dewcurve_p</td>
          <td> Bug in equation of plim corrected.
          </td>
</tr>
</table>

<p><br>
The following <font color=\"red\"><strong>uncritical errors</strong></font> have been fixed (i.e., errors
that do <font color=\"red\"><strong>not</strong></font> lead to wrong simulation results, but, e.g.,
units are wrong or errors in documentation):
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\" style=\"border-collapse:collapse;\">
<tr><td colspan=\"2\"><strong>Blocks.</strong></td></tr>
<tr><td> Examples</td>
          <td> Corrected typos in description texts of bus example models.
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Blocks.Continuous.</strong></td></tr>
<tr><td> LimIntegrator</td>
          <td> removed incorrect smooth(0,..) because expression might be discontinuous.
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Blocks.Math.UnitConversions.</strong></td></tr>
<tr><td> block_To_kWh<br>block_From_kWh</td>
          <td> Corrected unit from \"kWh\" to (syntactically correct) \"kW.h\".
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Electrical.Analog.Examples.</strong></td></tr>
<tr><td> HeatingNPN_OrGate</td>
          <td> Included start values, so that initialization is
                                                successful </td>
</tr>

<tr><td colspan=\"2\"><strong>Electrical.Analog.Lines.</strong></td></tr>
<tr><td> OLine</td>
          <td> Corrected unit from \"Siemens/m\" to \"S/m\".
           </td></tr>
<tr><td> TLine2</td>
          <td> Changed wrong type of parameter NL (normalized length) from
                   SIunits.Length to Real.
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Electrical.Digital.Delay.</strong></td></tr>
<tr><td> TransportDelay</td>
          <td> Syntax error corrected
                   (\":=\" in equation section is converted by Dymola silently to \"=\").
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Electrical.Digital</strong></td></tr>
<tr><td> Converters</td>
          <td> Syntax error corrected
                   (\":=\" in equation section is converted by Dymola silently to \"=\").
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Electrical.Polyphase.Basic.</strong></td></tr>
<tr><td> Conductor</td>
          <td> Changed wrong type of parameter G from SIunits.Resistance to
                   SIunits.Conductance.
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Electrical.Polyphase.Interfaces.</strong></td></tr>
<tr><td> Plug<br></td>
          <td> Made used \"pin\" connectors non-graphical (otherwise,
                   there are difficulties to connect to Plug).
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Electrical.Polyphase.Sources.</strong></td></tr>
<tr><td> SineCurrent</td>
          <td> Changed wrong type of parameter offset from SIunits.Voltage to
                   SIunits.Current.
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Examples.Loops.</strong></td></tr>
<tr><td> EngineV6</td>
          <td> Corrected wrong crankAngleOffset of some cylinders
                   and improved the example.
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Examples.Loops.Utilities.</strong></td></tr>
<tr><td> GasForce</td>
          <td> Wrong units corrected:
                   \"SIunitsPosition x,y\" to \"Real x,y\";
           \"SIunits.Pressure press\" to \"SIunits.Conversions.NonSIunits.Pressure_bar\"
           </td>
</tr>
<tr><td> GasForce2</td>
          <td> Wrong unit corrected: \"SIunits.Position x\" to \"Real x\".
           </td>
</tr>
<tr><td> EngineV6_analytic</td>
          <td> Corrected wrong crankAngleOffset of some cylinders.
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Interfaces.</strong></td></tr>
<tr><td> PartialLineForce</td>
          <td> Corrected wrong unit: \"SIunits.Position eRod_a\" to \"Real eRod_a\";
           </td>
</tr>
<tr><td> FlangeWithBearingAdaptor </td>
          <td> If includeBearingConnector = false, connector \"fr\"
                           + \"ame\" was not
                   removed. As long as the connecting element to \"frame\" determines
                   the non-flow variables, this is fine. In the corrected version, \"frame\"
                   is conditionally removed in this case.</td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Forces.</strong></td></tr>
<tr><td> ForceAndTorque</td>
          <td> Corrected wrong unit: \"SIunits.Force t_b_0\" to \"SIunits.Torque t_b_0\".
           </td>
</tr>
<tr><td> LineForceWithTwoMasses</td>
          <td> Corrected wrong unit: \"SIunits.Position e_rel_0\" to \"Real e_rel_0\".
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Frames.</strong></td></tr>
<tr><td> axisRotation</td>
          <td> Corrected wrong unit: \"SIunits.Angle der_angle\" to
                        \"SIunits.AngularVelocity der_angle\".
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Joints.Assemblies.</strong></td></tr>
<tr><td> JointUSP<br>JointSSP</td>
          <td> Corrected wrong unit: \"SIunits.Position aux\"  to \"Real\"
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Sensors.</strong></td></tr>
<tr><td> AbsoluteSensor</td>
          <td> Corrected wrong units: \"SIunits.Acceleration angles\" to
                   \"SIunits.Angle angles\" and
                   \"SIunits.Velocity w_abs_0\" to \"SIunits.AngularVelocity w_abs_0\"
           </td>
</tr>
<tr><td> RelativeSensor</td>
          <td> Corrected wrong units: \"SIunits.Acceleration angles\" to
                   \"SIunits.Angle angles\"
           </td>
</tr>
<tr><td> Distance</td>
          <td> Corrected wrong units: \"SIunits.Length L2\" to \"SIunits.Area L2\" and
                   SIunits.Length s_small2\" to \"SIunits.Area s_small2\"
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.MultiBody.Visualizers.Advanced.</strong></td></tr>
<tr><td> Shape</td>
          <td> Changed \"MultiBody.Types.Color color\" to \"Real color[3]\", since
                   \"Types.Color\" is \"Integer color[3]\" and there have been backward
                   compatibility problems with models using \"color\" before it was changed
                   to \"Types.Color\".
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.Rotational.Interfaces.</strong></td></tr>
<tr><td> FrictionBase</td>
          <td> Rewrote equations with new variables \"unitAngularAcceleration\" and
                   \"unitTorque\" in order that the equations are correct with respect
                   to units (previously, variable \"s\" can be both a torque and an
                   angular acceleration and this lead to unit incompatibilities)
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.Rotational.</strong></td></tr>
<tr><td> OneWayClutch<br>LossyGear</td>
          <td> Rewrote equations with new variables \"unitAngularAcceleration\" and
                   \"unitTorque\" in order that the equations are correct with respect
                   to units (previously, variable \"s\" can be both a torque and an
                   angular acceleration and this lead to unit incompatibilities)
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.Translational.Interfaces.</strong></td></tr>
<tr><td> FrictionBase</td>
          <td> Rewrote equations with new variables \"unitAngularAcceleration\" and
                   \"unitTorque\" in order that the equations are correct with respect
                   to units (previously, variable \"s\" can be both a torque and an
                   angular acceleration and this lead to unit incompatibilities)
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Mechanics.Translational.</strong></td></tr>
<tr><td> Speed</td>
          <td> Corrected unit of v_ref from SIunits.Position to SIunits.Velocity
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Examples.Tests.Components.</strong></td></tr>
<tr><td> PartialTestModel<br>PartialTestModel2</td>
          <td> Corrected unit of h_start from \"SIunits.Density\" to \"SIunits.SpecificEnthalpy\"
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Examples.SolveOneNonlinearEquation.</strong></td></tr>
<tr><td> Inverse_sh_T
                   InverseIncompressible_sh_T<br>
                   Inverse_sh_TX</td>
          <td> Rewrote equations so that dimensional (unit) analysis is correct\"
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Incompressible.Examples.</strong></td></tr>
<tr><td> TestGlycol</td>
          <td> Rewrote equations so that dimensional (unit) analysis is correct\"
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Interfaces.PartialTwoPhaseMedium.</strong></td></tr>
<tr><td> dBubbleDensity_dPressure<br>dDewDensity_dPressure</td>
          <td> Changed wrong type of ddldp from \"DerDensityByEnthalpy\"
                   to \"DerDensityByPressure\".
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Common.ThermoFluidSpecial.</strong></td></tr>
<tr><td> ThermoProperties</td>
          <td> Changed wrong units:
                   \"SIunits.DerEnergyByPressure dupT\" to \"Real dupT\" and
                   \"SIunits.DerEnergyByDensity dudT\" to \"Real dudT\"
           </td>
</tr>
<tr><td> ThermoProperties_ph</td>
          <td> Changed wrong unit from \"SIunits.DerEnergyByPressure duph\" to \"Real duph\"
           </td>
</tr>
<tr><td> ThermoProperties_pT</td>
          <td> Changed wrong unit from \"SIunits.DerEnergyByPressure dupT\" to \"Real dupT\"
           </td>
</tr>
<tr><td> ThermoProperties_dT</td>
          <td>  Changed wrong unit from \"SIunits.DerEnergyByDensity dudT\" to \"Real dudT\"
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.IdealGases.Common.SingleGasNasa.</strong></td></tr>
<tr><td> cp_Tlow_der</td>
          <td> Changed wrong unit from \"SIunits.Temperature dT\" to \"Real dT\".
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Water.IF97_Utilities.BaseIF97.Basic.</strong></td></tr>
<tr><td> p1_hs<br>
                   h2ab_s<br>
                   p2a_hs<br>
                   p2b_hs<br>
                   p2c_hs<br>
                   h3ab_p<br>
                   T3a_ph<br>
                   T3b_ph<br>
                   v3a_ph<br>
                   v3b_ph<br>
                   T3a_ps<br>
                   T3b_ps<br>
                   v3a_ps<br>
                   v3b_ps</td>
          <td> Changed wrong unit of variables h/hstar, s, sstar from
                   \"SIunits.Enthalpy\" to \"SIunits.SpecificEnthalpy\",
                   \"SIunits.SpecificEntropy\", \"SIunits.SpecificEntropy
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Water.IF97_Utilities.BaseIF97.Transport.</strong></td></tr>
<tr><td> cond_dTp</td>
          <td> Changed wrong unit of TREL, rhoREL, lambdaREL from
                   \"SIunits.Temperature\", \"SIunit.Density\", \"SIunits.ThermalConductivity\"
                   to \"Real\".
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Water.IF97_Utilities.BaseIF97.Inverses.</strong></td></tr>
<tr><td> tofps5<br>tofpst5</td>
          <td> Changed wrong unit of pros from \"SIunits.SpecificEnthalpy\" to
                   \"SIunits.SpecificEntropy\".
           </td>
</tr>

<tr><td colspan=\"2\"><strong>Media.Water.IF97_Utilities.</strong></td></tr>
<tr><td> waterBaseProp_ph</td>
          <td> Improved calculation at the limits of the validity.
           </td>
</tr>

        <tr><td colspan=\"2\"><strong>Thermal.</strong></td></tr>
<tr><td> FluidHeatFlow<br>HeatTransfer</td>
          <td> Corrected wrong unit \"SIunits.Temperature\" of difference temperature
                        variables with \"SIunits.TemperatureDifference\".
           </td>
</tr>

</table>

</html>"));
end Version_2_2_2;

class Version_2_2_1 "Version 2.2.1 (March 24, 2006)"
  extends Modelica.Icons.ReleaseNotes;

   annotation (Documentation(info="<html>

<p>
Version 2.2.1 is backward compatible to version 2.2.
</p>

<p>
In this version, <strong>no</strong> new libraries have been added.
The following major improvements have been made:
</p>

<ul>
<li> The <strong>Documentation</strong> of the Modelica standard library was
         considerably improved:<br>
         In Dymola 6, the new feature was introduced to automatically add tables
         for class content and component interface definitions (parameters and
         connectors) to the info layer. For this reason, the corresponding (partial)
         tables previously present in the Modelica Standard Library have been
         removed. The new feature of Dymola 6 has the significant advantage that
         all tables are now guaranteed to be up-to-date.<br>
         Additionally, the documentation has been improved by adding appropriate
         description texts to parameters, connector instances, function input
         and output arguments etc., in order that the automatically generated
         tables do not have empty entries. Also new User's Guides for sublibraries
         Rotational and SIunits have been added and the User's Guide on top
         level (Modelica.UsersGuide) has been improved.<br>&nbsp;</li>

<li> Initialization options have been added to the Modelica.Blocks.<strong>Continuous</strong>
         blocks (NoInit, SteadyState, InitialState, InitialOutput). If InitialOutput
         is selected, the block output is provided as initial condition. The states
         of the block are then initialized as close as possible to steady state.
         Furthermore, the Continuous.LimPID block has been significantly
         improved and much better documented.<br>&nbsp;</li>

<li> The Modelica.<strong>Media</strong> library has been significantly improved:<br>
         New functions setState_pTX, setState_phX, setState_psX, setState_dTX
         have been added to PartialMedium to compute the independent medium variables
         (= state of medium) from p,T,X, or from p,h,X or from p,s,X or from
         d,T,X. Then functions are provided for all interesting medium variables
         to compute them from its medium state. All these functions are
         implemented in a robust way for all media (with a few exceptions, if the
         generic function does not make sense for a particular medium).</li>
</ul>

<p>
The following <strong>new components</strong> have been added to <strong>existing</strong> libraries:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Examples.</strong></td></tr>
<tr><td> PID_Controller</td>
          <td> Example to demonstrate the usage of the
                   Blocks.Continuous.LimPID block.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Math.</strong></td></tr>
<tr><td> UnitConversions.*</td>
          <td> New package that provides blocks for unit conversions.
                   UnitConversions.ConvertAllBlocks allows to select all
                   available conversions from a menu.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Machines.BasicMachines.SynchronousMachines.</strong></td></tr>
<tr><td> SM_ElectricalExcitedDamperCage</td>
          <td> Electrical excited synchronous machine with damper cage</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Machines.BasicMachines.Components.</strong></td></tr>
<tr><td> ElectricalExcitation </td>
          <td> Electrical excitation for electrical excited synchronous
                   induction machines</td></tr>
<tr><td> DamperCage</td>
          <td> Unsymmetrical damper cage for electrical excited synchronous
                   induction machines. At least the user has to specify the dampers
                   resistance and stray inductance in d-axis; if he omits the
                   parameters of the q-axis, the same values as for the d.axis
                   are used, assuming a symmetrical damper.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Machines.Examples.</strong></td></tr>
<tr><td> SMEE_Gen </td>
          <td> Test example 7: ElectricalExcitedSynchronousMachine
                   as Generator</td></tr>
<tr><td> Utilities.TerminalBox</td>
          <td> Terminal box for three-phase induction machines to choose
                   either star (wye) ? or delta ? connection</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Math.Matrices.</strong></td></tr>
<tr><td> equalityLeastSquares</td>
          <td> Solve a linear equality constrained least squares problem:<br>
                  min|A*x-a|^2 subject to B*x=b</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.</strong></td></tr>
<tr><td> Parts.PointMass</td>
          <td> Point mass, i.e., body where inertia tensor is neglected.</td></tr>
<tr><td> Interfaces.FlangeWithBearing</td>
          <td> Connector consisting of 1-dim. rotational flange and its
                   3-dim. bearing frame.</td></tr>
<tr><td> Interfaces.FlangeWithBearingAdaptor</td>
          <td> Adaptor to allow direct connections to the sub-connectors
                   of FlangeWithBearing.</td></tr>
<tr><td> Types.SpecularCoefficient</td>
          <td> New type to define a specular coefficient.</td></tr>
<tr><td> Types.ShapeExtra</td>
          <td> New type to define the extra data for visual shape objects and to
                   have a central place for the documentation of this data.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.Examples.Elementary</strong></td></tr>
<tr><td> PointGravityWithPointMasses</td>
          <td> Example of two point masses in a central gravity field.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.Rotational.</strong></td></tr>
<tr><td>UsersGuide</td>
          <td> A User's Guide has been added by using the documentation previously
                   present in the package documentation of Rotational.</td></tr>
<tr><td>Sensors.PowerSensor</td>
          <td> New component to measure the energy flow between two connectors
                   of the Rotational library.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.Translational.</strong></td></tr>
<tr><td>Speed</td>
          <td> New component to move a translational flange
                   according to a reference speed</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Media.Interfaces.PartialMedium.</strong></td></tr>
<tr><td>specificEnthalpy_pTX</td>
          <td> New function to compute specific enthalpy from pressure, temperature
                   and mass fractions.</td></tr>
<tr><td>temperature_phX</td>
          <td> New function to compute temperature from pressure, specific enthalpy,
                   and mass fractions.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Icons.</strong></td></tr>
<tr><td> SignalBus</td>
          <td> Icon for signal bus</td></tr>
<tr><td> SignalSubBus</td>
          <td> Icon for signal sub-bus</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.SIunits.</strong></td></tr>
<tr><td>UsersGuide</td>
          <td> A User's Guide has been added that describes unit handling.</td></tr>
<tr><td> Resistance<br>
                   Conductance</td>
          <td> Attribute 'min=0' removed from these types.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Thermal.FluidHeatFlow.</strong></td></tr>
<tr><td> Components.Valve</td>
          <td> Simple controlled valve with either linear or
                   exponential characteristic.</td></tr>
<tr><td> Sources. IdealPump </td>
          <td> Simple ideal pump (resp. fan)  dependent on the shaft's speed;
                   pressure increase versus volume flow is defined as a linear
                   function. Torque * Speed = Pressure increase * Volume flow
                   (without losses).</td></tr>
<tr><td> Examples.PumpAndValve </td>
          <td> Test example for valves.</td></tr>
<tr><td> Examples.PumpDropOut </td>
          <td> Drop out of 1 pump to test behavior of semiLinear.</td></tr>
<tr><td> Examples.ParallelPumpDropOut </td>
          <td> Drop out of 2 parallel pumps to test behavior of semiLinear.</td></tr>
<tr><td> Examples.OneMass </td>
          <td> Cooling of 1 hot mass to test behavior of semiLinear.</td></tr>
<tr><td> Examples.TwoMass </td>
          <td> Cooling of 2 hot masses to test behavior of semiLinear.</td></tr>
</table>

<p>
The following <strong>components</strong> have been improved:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tr><td colspan=\"2\"><strong>Modelica.</strong></td></tr>
<tr><td> UsersGuide</td>
          <td> User's Guide and package description of Modelica Standard Library improved.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Interfaces.</strong></td></tr>
<tr><td> RealInput<br>
                   BooleanInput<br>
                   IntegerInput</td>
          <td> When dragging one of these connectors the width and height
                   is a factor of 2 larger as a standard icon. Previously,
                   these connectors have been dragged and then manually enlarged
                   by a factor of 2 in the Modelica standard library.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Blocks.</strong></td></tr>
<tr><td> Continuous.*</td>
          <td> Initialization options added to all blocks
                   (NoInit, SteadyState, InitialState, InitialOutput).
                   New parameter limitsAtInit to switch off the limits
                   of LimIntegrator or LimPID during initialization</td></tr>
<tr><td> Continuous.LimPID</td>
          <td> Option to select P, PI, PD, PID controller.
                   Documentation significantly improved.</td></tr>
<tr><td> Nonlinear.Limiter<br>
                   Nonlinear.VariableLimiter<br>
                   Nonlinear.Deadzone</td>
          <td> New parameter limitsAtInit/deadZoneAtInit to switch off the limits
                   or the dead zone during initialization</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog. </strong></td></tr>
<tr><td> Sources</td>
          <td> Icon improved (+/- added to voltage sources, arrow added to
                   current sources).</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Semiconductors. </strong></td></tr>
<tr><td> Diode</td>
          <td> smooth() operator included to improve numerics.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Machines.BasicMachines.SynchronousMachines. </strong></td></tr>
<tr><td> SM_PermanentMagnetDamperCage<br>
                   SM_ElectricalExcitedDamperCage<br>
                   SM_ReluctanceRotorDamperCage</td>
          <td> The user can choose \"DamperCage = false\" (default: true)
                   to remove all equations for the damper cage from the model.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Machines.BasicMachines.InductionMachines. </strong></td></tr>
<tr><td> IM_SlipRing</td>
          <td> Easier parameterization: if the user selects \"useTurnsRatio = false\"
                   (default: true, this is the same behavior as before),
                        parameter TurnsRatio is calculated internally from
                        Nominal stator voltage and Locked-rotor voltage.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Math.Matrices.</strong></td></tr>
<tr><td>leastSquares</td>
          <td>The A matrix in the least squares problem might be rank deficient.
                  Previously, it was required that A has full rank.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.</strong></td></tr>
<tr><td>all models</td>
          <td> <ul>
                   <li> All components with animation information have a new variable
                                <strong>specularCoefficient</strong> to define the reflection of ambient light.
                                The default value is world.defaultSpecularCoefficient which has
                                a default of 0.7. By changing world.defaultSpecularCoefficient, the
                                specularCoefficient of all components is changed that are not
                                explicitly set differently. Since specularCoefficient is a variable
                                (and no parameter), it can be changed during simulation. Since
                                annotation(Dialog) is set, this variable still appears in the
                                parameter menus.<br>
                                Previously, a constant specularCoefficient of 0.7 was used
                                for all components.</li>
                   <li> Variable <strong>color</strong> of all components is no longer a parameter
                                but an input variable. Also all parameters in package <strong>Visualizers</strong>,
                                with the exception of <strong>shapeType</strong> are no longer parameters but
                                defined as input variables with annotation(Dialog). As a result,
                                all these variables appear still in parameter menus, but they can
                                be changed during simulation (e.g., color might be used to
                                display the temperature of a part).</li>
                   <li> All menus have been changed to follow the Modelica 2.2 annotations
                                \"Dialog, group, tab, enable\" (previously, a non-standard Dymola
                                definition for menus was used). Also, the \"enable\" annotation
                                is used in all menus
                                to disable input fields if the input would be ignored.</li>
                   <li> All visual shapes are now defined with conditional declarations
                                (to remove them, if animation is switched off). Previously,
                                these (protected) objects have been defined by arrays with
                                dimension 0 or 1.</li>
                   </ul></td></tr>

<tr><td>Frames.resolveRelative</td>
          <td> The derivative of this function added as function and defined via
                   an annotation. In certain situations, tools had previously
                   difficulties to differentiate the inlined function automatically.</td></tr>

<tr><td>Forces.*</td>
          <td> The scaling factors N_to_m and Nm_to_m have no longer a default
                   value of 1000 but a default value of world.defaultN_to_m (=1000)
                   and world.defaultNm_to_m (=1000). This allows to change the
                   scaling factors for all forces and torques in the world
                   object.</td></tr>
<tr><td>Interfaces.Frame.a<br>
                  Interfaces.Frame.b<br>
                  Interfaces.Frame_resolve</td>
          <td> The Frame connectors are now centered around the origin to ease
                   the usage. The shape was changed, such that the icon is a factor
                   of 1.6 larger as a standard icon (previously, the icon had a
                   standard size when dragged and then the icon was manually enlarged
                   by a factor of 1.5 in the y-direction in the MultiBody library;
                   the height of 16 allows easy positioning on the standard grid size of 2).
                   The double line width of the border in icon and diagram layer was changed
                   to a single line width and when making a connection the connection
                   line is dark grey and no longer black which looks better.</td></tr>
<tr><td>Joints.Assemblies.*</td>
          <td> When dragging an assembly joint, the icon is a factor of 2
                   larger as a standard icon. Icon texts and connectors have a
                   standard size in this enlarged icon (and are not a factor of 2
                   larger as previously).</td></tr>
<tr><td>Types.*</td>
          <td> All types have a corresponding icon now to visualize the content
                   in the package browser (previously, the types did not have an icon).</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.Rotational.</strong></td></tr>
<tr><td> Inertia</td>
          <td> Initialization and state selection added.</td></tr>
<tr><td> SpringDamper</td>
          <td> Initialization and state selection added.</td></tr>
<tr><td> Move</td>
          <td> New implementation based solely on Modelica 2.2 language
                   (previously, the Dymola specific constrain(..) function was used).</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Mechanics.Translational.</strong></td></tr>
<tr><td> Move</td>
          <td> New implementation based solely on Modelica 2.2 language
                   (previously, the Dymola specific constrain(..) function was used).</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Thermal.FluidHeatFlow.Interfaces.</strong></td></tr>
<tr><td> SimpleFriction</td>
          <td> Calculates friction losses from pressure drop and volume flow.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Thermal.FluidHeatFlow.Components.</strong></td></tr>
<tr><td> IsolatedPipe<br>
                   HeatedPipe</td>
          <td> Added geodetic height as a source of pressure change;
                   feeds friction losses as calculated by simple friction to
                   the energy balance of the medium.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Media.Interfaces.PartialMedium.FluidConstants.</strong></td></tr>
<tr><td>HCRIT0</td><td>Critical specific enthalpy of the fundamental
                  equation (base formulation of the fluid medium model).</td></tr>
<tr><td>SCRIT0</td><td>Critical specific entropy of the fundamental
                  equation (base formulation of the fluid medium model).</td></tr>
<tr><td>deltah</td><td>Enthalpy offset (default: 0) between the
                  specific enthalpy of the fluid model and the user-visible
                  specific enthalpy in the model: deltah = h_model - h_fundamentalEquation.
</td></tr>
<tr><td>deltas</td><td>Entropy offset (default: 0) between the
                  specific entropy of the fluid model and the user-visible
                  specific entropy in the model: deltas = s_model - s_fundamentalEquation.</td></tr>
<tr><td>T_default</td><td>Default value for temperature of medium (for initialization)</td></tr>
<tr><td>h_default</td><td>Default value for specific enthalpy of medium (for initialization)</td></tr>
<tr><td>p_default</td><td>Default value for pressure of medium (for initialization)</td></tr>
<tr><td>X_default</td><td>Default value for mass fractions of medium (for initialization)</td></tr>
</table>
<p>
The following <strong>errors</strong> have been fixed:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Tables.</strong></td></tr>
<tr><td>CombiTable1D<br>
                  CombiTable1Ds<br>
                  CombiTable2D</td>
          <td> Parameter \"tableOnFile\" determines now whether a table is read from
                   file or used from parameter \"table\". Previously, if \"fileName\" was not
                   \"NoName\", a table was always read from file \"fileName\", independently
                   of the setting of \"tableOnFile\". This has been corrected.<br>
                   Furthermore, the initialization of a table is now performed in a
                   when-clause and no longer in a parameter declaration, because some
                   tools evaluate the parameter declaration in some situation more than
                   once and then the table is unnecessarily read several times
                   (and occupies also more memory).</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Blocks.Sources.</strong></td></tr>
<tr><td>CombiTimeTable</td>
          <td> Same bug fix/improvement as for the tables from Modelica.Blocks.Tables
                   as outlined above.</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Semiconductors. </strong></td></tr>
<tr><td> PMOS<br>
                   NMOS<br>
                   HeatingPMOS<br>
                   HeatingNMOS</td>
          <td> The Drain-Source-Resistance RDS had actually a resistance of
                   RDS/v, with v=Beta*(W+dW)/(L+dL). The correct formula is without
                   the division by \"v\". This has now been corrected.<br>
                   This bug fix should not have an essential effect in most applications.
                   In the default case (Beta=1e-5), the Drain-Source-Resistance was
                   a factor of 1e5 too large and had in the default case the
                   wrong value 1e12, although it should have the value 1e7. The effect
                   was that this resistance had practically no effect.</td></tr>

<tr><td colspan=\"2\"> <strong>Modelica.Media.IdealGases.Common.SingleGasNasa.</strong></td></tr>
<tr><td> dynamicViscosityLowPressure</td>
          <td> Viscosity and thermal conductivity (which needs viscosity as input)
                   were computed wrong for polar gases and gas mixtures
                   (i.e., if dipole moment not 0.0). This has been fixed in version 2.2.1.</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Utilities.Streams.</strong></td></tr>
<tr><td>readLine</td>
          <td> Depending on the C-implementation, the stream was not correctly closed.
                   This has been corrected by adding a \"Streams.close(..)\"
                   after reading the file content.</td></tr>

</table>
</html>"));
end Version_2_2_1;

class Version_2_2 "Version 2.2 (April 6, 2005)"
  extends Modelica.Icons.ReleaseNotes;

   annotation (Documentation(info="<html>

<p>
Version 2.2 is backward compatible to version 2.1.
</p>

<p>
The following <strong>new libraries</strong> have been added:
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tr><td><a href=\"modelica://Modelica.Media\">Modelica.Media</a></td>
          <td> Property models of liquids and gases, especially
                   <ul>
                   <li>1241 detailed gas models,</li>
                   <li> moist air,</li>
                   <li> high precision water model (according to IAPWS/IF97 standard),</li>
                   <li> incompressible media defined by tables (cp(T), rho(t), eta(T), etc. are defined by tables).</li>
                   </ul>
                   The user can conveniently define mixtures of gases between the
                   1241 gas models. The models are
                   designed to work well in dynamic simulations. They
                   are based on a new standard interface for media with
                   single and multiple substances and one or multiple phases
                   with the following features:
                   <ul>
                   <li> The independent variables of a medium model do not influence the
                                definition of a fluid connector port or how the
                                balance equations have to be implemented.<br>
                                Used independent variables: \"p,T\", \"p,T,X\", \"p,h\", \"d,T\".</li>
                   <li> Optional variables, e.g., dynamic viscosity, are only computed
                                if needed.</li>
                   <li> The medium models are implemented with regards to efficient
                                dynamic simulation.</li>
                   </ul>
          </td></tr>
<tr><td><a href=\"modelica://Modelica.Thermal.FluidHeatFlow\">Modelica.Thermal.FluidHeatFlow</a></td>
          <td> Simple components for 1-dim., incompressible thermo-fluid flow
                   to model coolant flows, e.g., of electrical machines.
                   Components can be connected arbitrarily together (= ideal mixing
                   at connection points) and fluid may reverse direction of flow.
</td></tr>
</table>
<p>
The following <strong>changes</strong> have been performed in the
<strong>Modelica.Mechanics.MultiBody</strong> library:
</p>
<ul>
<li> Component MultiBody.World has a new parameter
         <strong>driveTrainMechanics3D</strong>. If set to <strong>true</strong>, 3D mechanical effects
         of MultiBody.Parts.Mounting1D/Rotor1D/BevelGear1D are taken into account. If set to
         <strong>false</strong> (= default), 3D mechanical effects in these elements
         are not taken into account and the
         frame connectors to connect to 3D parts are disabled (all
         connections to such a disabled connector are also disabled, due to the
         new feature of conditional declarations in Modelica language 2.2)</li>
<li> All references to \"MultiBody.xxx\" have
         been changed to \"Modelica.Mechanics.MultiBodys.xxx\" in order that after
         copying of a component outside of the Modelica library, the references
         still remain valid.</li>
</ul>
</html>"));
end Version_2_2;

class Version_2_1 "Version 2.1 (Nov. 11, 2004)"
  extends Modelica.Icons.ReleaseNotes;

   annotation (Documentation(info="<html>

<p> This is a major change with respect to previous versions of the
        Modelica Standard Library, because <strong>many new libraries</strong> and components
        are included and because the input/output blocks (Modelica.Blocks)
        have been considerably simplified:
</p>
<ul>
<li> An input/output connector is defined <strong>without</strong> a hierarchy (this is possible
         due to new features of the Modelica language). For example, the input
         signal of a block \"FirstOrder\" was previously accessed as \"FirstOrder.inPort.signal[1]\".
         Now it is accessed as \"FirstOrder.u\". This simplifies the understanding and usage
         especially for beginners.</li>
<li> De-vectorized the <strong>Modelica.Blocks</strong> library. All blocks in the
         Modelica.Blocks library are now scalar blocks. As a result,
         the parameters of the Blocks are scalars and no vectors any
         more. For example, a parameter \"amplitude\" that might had
         a value of \"{1}\" previously, has now a value of \"1\". This simplifies
         the understanding and usage especially for beginners.<br>
         If a vector of blocks is needed, this can be easily
         accomplished by adding a dimension to the instance. For example
         \"Constant const[3](k={1,2,3})\" defines three Constant blocks.
         An additional advantage of the new approach is that
         the implementation of Modelica.Blocks is much simpler and is easier to
         understand.
</li>
</ul>

<p>
The discussed changes of Modelica.Blocks are not backward compatible.
A script to <strong>automatically</strong> convert models to this new version is
provided. There might be rare cases, where this script does not convert.
In this case models have to be manually converted.
In any case you should make a back-up copy of your model
before automatic conversion is performed.
</p>
<p>
The following <strong>new libraries</strong> have been added:
</p>
<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tr><td><a href=\"modelica://Modelica.Electrical.Digital\">Modelica.Electrical.Digital</a></td>
          <td>Digital electrical components based on 2-,3-,4-, and 9-valued logic<br>
                  according to the VHDL standard</td></tr>
<tr><td><a href=\"modelica://Modelica.Electrical.Machines\">Modelica.Electrical.Machines</a></td>
          <td>Asynchronous, synchronous and DC motor and generator models</td></tr>
<tr><td><a href=\"modelica://Modelica.Math.Matrices\">Modelica.Math.Matrices</a></td>
          <td>Functions operating on matrices such as solve() (A*x=b), leastSquares(),<br>
                  norm(), LU(), QR(),  eigenValues(), singularValues(), exp(), ...</td></tr>
<tr><td><a href=\"modelica://Modelica.StateGraph\">Modelica.StateGraph</a></td>
          <td> Modeling of <strong>discrete event</strong> and <strong>reactive</strong> systems in a convenient way using<br>
                   <strong>hierarchical state machines</strong> and <strong>Modelica</strong> as <strong>action language</strong>.<br>
                   It is based on JGrafchart and Grafcet and  has a similar modeling power as<br>
                   StateCharts. It avoids deficiencies of usually used action languages.<br>
                   This library makes the ModelicaAdditions.PetriNets library obsolete.</td></tr>
<tr><td><a href=\"modelica://Modelica.Utilities.Files\">Modelica.Utilities.Files</a></td>
          <td>Functions to operate on files and directories (copy, move, remove files etc.)</td></tr>
<tr><td><a href=\"modelica://Modelica.Utilities.Streams\">Modelica.Utilities.Streams</a></td>
          <td>Read from files and write to files (print, readLine, readFile, error, ...)</td></tr>
<tr><td><a href=\"modelica://Modelica.Utilities.Strings\">Modelica.Utilities.Strings</a></td>
          <td>Operations on strings (substring, find, replace, sort, scanToken, ...)</td></tr>
<tr><td><a href=\"modelica://Modelica.Utilities.System\">Modelica.Utilities.System</a></td>
          <td>Get/set current directory, get/set environment variable, execute shell command, etc.</td></tr>
</table>
<p>
The following existing libraries outside of the Modelica standard library
have been improved and added as <strong>new libraries</strong>
(models using the previous libraries are automatically converted
to the new sublibraries inside package Modelica):
</p>
<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tr><td><a href=\"modelica://Modelica.Blocks.Discrete\">Modelica.Blocks.Discrete</a></td>
          <td> Discrete input/output blocks with fixed sample period<br>
                   (from ModelicaAdditions.Blocks.Discrete)</td></tr>
<tr><td><a href=\"modelica://Modelica.Blocks.Logical\">Modelica.Blocks.Logical</a></td>
          <td> Logical components with Boolean input and output signals<br>
                   (from ModelicaAdditions.Blocks.Logical)</td></tr>
<tr><td><a href=\"modelica://Modelica.Blocks.Nonlinear\">Modelica.Blocks.Nonlinear</a></td>
          <td> Discontinuous or non-differentiable algebraic control blocks such as variable limiter,<br>
                   fixed, variable and Pade delay etc. (from ModelicaAdditions.Blocks.Nonlinear)</td></tr>
<tr><td><a href=\"modelica://Modelica.Blocks.Routing\">Modelica.Blocks.Routing</a></td>
          <td> Blocks to combine and extract signals, such as multiplexer<br>
                   (from ModelicaAdditions.Blocks.Multiplexer)</td></tr>
<tr><td><a href=\"modelica://Modelica.Blocks.Tables\">Modelica.Blocks.Tables</a></td>
          <td> One and two-dimensional interpolation in tables. CombiTimeTable is available<br>
                   in Modelica.Blocks.Sources (from ModelicaAdditions.Tables)</td></tr>
<tr><td><a href=\"modelica://Modelica.Mechanics.MultiBody\">Modelica.Mechanics.MultiBody</a></td>
          <td> Components to model the movement of 3-dimensional mechanical systems. Contains<br>
                   body, joint, force and sensor components, analytic handling of kinematic loops,<br>
                   force elements with mass, series/parallel connection of 3D force elements etc.<br>
                   (from MultiBody 1.0 where the new signal connectors are used;<br>
                   makes the ModelicaAdditions.MultiBody library obsolete)</td></tr>
</table>
<p>
As a result, the ModelicaAdditions library is obsolete, because all components
are either included in the Modelica library or are replaced by much more
powerful libraries (MultiBody, StateGraph).
</p>
<p>
The following <strong>new components</strong> have been added to <strong>existing</strong> libraries.
</p>
<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Logical.</strong></td></tr>
<tr><td>Pre</td>
          <td>y = pre(u): Breaks algebraic loops by an infinitesimal small<br>
                  time delay (event iteration continues until u = pre(u))</td></tr>
<tr><td>Edge</td>
          <td>y = edge(u): Output y is true, if the input u has a rising edge </td></tr>
<tr><td>FallingEdge</td>
          <td>y = edge(not u): Output y is true, if the input u has a falling edge </td></tr>
<tr><td>Change</td>
          <td>y = change(u): Output y is true, if the input u has a rising or falling edge </td></tr>
<tr><td>GreaterEqual</td>
          <td>Output y is true, if input u1 is greater or equal than input u2 </td></tr>
<tr><td>Less</td>
          <td>Output y is true, if input u1 is less than input u2 </td></tr>
<tr><td>LessEqual</td>
          <td>Output y is true, if input u1 is less or equal than input u2 </td></tr>
<tr><td>Timer</td>
          <td>Timer measuring the time from the time instant where the<br>
                  Boolean input became true </td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Math.</strong></td></tr>
<tr><td>BooleanToReal</td>
          <td>Convert Boolean to Real signal</td></tr>
<tr><td>BooleanToInteger</td>
          <td>Convert Boolean to Integer signal</td></tr>
<tr><td>RealToBoolean</td>
          <td>Convert Real to Boolean signal</td></tr>
<tr><td>IntegerToBoolean</td>
          <td>Convert Integer to Boolean signal</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Sources.</strong></td></tr>
<tr><td>RealExpression</td>
          <td>Set output signal to a time varying Real expression</td></tr>
<tr><td>IntegerExpression</td>
          <td>Set output signal to a time varying Integer expression</td></tr>
<tr><td>BooleanExpression</td>
          <td>Set output signal to a time varying Boolean expression</td></tr>
<tr><td>BooleanTable</td>
          <td>Generate a Boolean output signal based on a vector of time instants</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.</strong></td></tr>
<tr><td>Frames.from_T2</td>
          <td>Return orientation object R from transformation matrix T and its derivative der(T)</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Mechanics.Rotational.</strong></td></tr>
<tr><td>LinearSpeedDependentTorque</td>
          <td>Linear dependency of torque versus speed (acts as load torque)</td></tr>
<tr><td>QuadraticSpeedDependentTorque</td>
          <td>Quadratic dependency of torque versus speed (acts as load torque)</td></tr>
<tr><td>ConstantTorque</td>
          <td>Constant torque, not dependent on speed (acts as load torque)</td></tr>
<tr><td>ConstantSpeed</td>
          <td>Constant speed, not dependent on torque (acts as load torque)</td></tr>
<tr><td>TorqueStep</td>
          <td>Constant torque, not dependent on speed (acts as load torque)</td></tr>
</table>
<p>
The following <strong>bugs</strong> have been <strong>corrected</strong>:
</p>
<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tr><td colspan=\"2\"><strong>Modelica.Mechanics.MultiBody.Forces.</strong></td></tr>
<tr><td>LineForceWithMass<br>
                  Spring</td>
          <td>If mass of the line force or spring component is not zero, the<br>
                  mass was (implicitly) treated as \"mass*mass\" instead of as \"mass\"</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Mechanics.Rotational.</strong></td></tr>
<tr><td>Speed</td>
          <td>If parameter exact=<strong>false</strong>, the filter was wrong<br>
                  (position was filtered and not the speed input signal)</td></tr>
</table>
<p>
Other changes:
</p>
<ul>
<li> All connectors are now smaller in the diagram layer. This gives
         a nicer layout when connectors and components are used together
         in a diagram</li>
<li> Default instance names are defined for all connectors, according
         to a new annotation introduced in Modelica 2.1. For example,
         when dragging connector \"Flange_a\" from the Rotational library to
         the diagram layer, the default connector instance name is
         \"flange_a\" and not \"Flange_a1\".</li>
<li> The Modelica.Mechanics.Rotational connectors are changed from
         a square to a circle</li>
<li> The Modelica.Mechanics.Translational connectors are changed from a
         green to a dark green color in order that connection lines
         can be better seen, especially when printed.</li>
<li> The Modelica.Blocks connectors for Real signals are changed from
         blue to dark blue in order to distinguish them from electrical signals.</li>
</ul>
</html>"));
end Version_2_1;

class Version_1_6 "Version 1.6 (June 21, 2004)"
  extends Modelica.Icons.ReleaseNotes;

   annotation (Documentation(info="<html>

<p> Added 1 new library (Electrical.Polyphase), 17 new components,
        improved 3 existing components
        in the Modelica.Electrical library and improved 3 types
        in the Modelica.SIunits library. Furthermore,
        this User's Guide has been started. The improvements
        in more detail:
</p>
<p>
<strong>New components</strong>
</p>
<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Basic.</strong></td></tr>
<tr><td>SaturatingInductor</td>
          <td>Simple model of an inductor with saturation</td></tr>
<tr><td>VariableResistor</td>
          <td>Ideal linear electrical resistor with variable resistance</td></tr>
<tr><td>VariableConductor</td>
          <td>Ideal linear electrical conductor with variable conductance</td></tr>
<tr><td>VariableCapacitor</td>
          <td>Ideal linear electrical capacitor with variable capacitance</td></tr>
<tr><td>VariableInductor</td>
          <td>Ideal linear electrical inductor with variable inductance</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Semiconductors.</strong></td></tr>
<tr><td>HeatingDiode</td>
          <td>Simple diode with heating port</td></tr>
<tr><td>HeatingNMOS</td>
          <td>Simple MOS Transistor with heating port</td></tr>
<tr><td>HeatingPMOS</td>
          <td>Simple PMOS Transistor with heating port</td></tr>
<tr><td>HeatingNPN</td>
          <td>Simple NPN BJT according to Ebers-Moll with heating port</td></tr>
<tr><td>HeatingPNP</td>
          <td>Simple PNP BJT according to Ebers-Moll with heating port</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Polyphase</strong><br>
          A new library for polyphase electrical circuits</td></tr>
</table>
<p>
<strong>New examples</strong>
</p>
<p>
The following new examples have been added to
Modelica.Electrical.Analog.Examples:
</p>
<p>
CharacteristicThyristors,
CharacteristicIdealDiodes,
HeatingNPN_OrGate,
HeatingMOSInverter,
HeatingRectifier,
Rectifier,
ShowSaturatingInductor
ShowVariableResistor
</p>
<p>
<strong>Improved existing components</strong>
</p>
<p>In the library Modelica.Electrical.Analog.Ideal,
a knee voltage has been introduced for the components
IdealThyristor, IdealGTOThyristor, IdealDiode in order
that the approximation of these ideal elements is improved
with not much computational effort.</p>
<p> In the Modelica.SIunits library, the following changes
        have been made:</p>
<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tr><td>Inductance</td>
          <td>min=0 removed</td></tr>
<tr><td>SelfInductance</td>
          <td>min=0 added</td></tr>
<tr><td>ThermodynamicTemperature</td>
          <td>min=0 added</td></tr>
</table>
</html>"));
end Version_1_6;

class Version_1_5 "Version 1.5 (Dec. 16, 2002)"
  extends Modelica.Icons.ReleaseNotes;

   annotation (Documentation(info="<html>

<p> Added 55 new components. In particular, added new package
        <strong>Thermal.HeatTransfer</strong> for modeling of lumped
        heat transfer, added model <strong>LossyGear</strong> in Mechanics.Rotational
        to model gear efficiency and bearing friction according to a new
        theory in a robust way, added 10 new models in Electrical.Analog and
        added several other new models and improved existing models.
</p>
<p>
<strong>New components</strong>
</p>
<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tr><td colspan=\"2\"><strong>Modelica.Blocks.</strong></td></tr>
<tr><td>Continuous.Der</td><td>Derivative of input (= analytic differentiations)</td></tr>
<tr><td><strong><em>Examples</em></strong></td><td>Demonstration examples of the components of this package</td></tr>
<tr><td>Nonlinear.VariableLimiter</td><td>Limit the range of a signal with variable limits</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Interfaces.</strong></td></tr>
<tr><td>RealPort</td><td>Real port (both input/output possible)</td></tr>
<tr><td>IntegerPort</td><td>Integer port (both input/output possible)</td></tr>
<tr><td>BooleanPort</td><td>Boolean port (both input/output possible)</td></tr>
<tr><td>SIMO</td><td>Single Input Multiple Output continuous control block</td></tr>
<tr><td>IntegerBlockIcon</td><td>Basic graphical layout of Integer block</td></tr>
<tr><td>IntegerMO</td><td>Multiple Integer Output continuous control block</td></tr>
<tr><td>IntegerSignalSource</td><td>Base class for continuous Integer signal source</td></tr>
<tr><td>IntegerMIBooleanMOs</td><td>Multiple Integer Input Multiple Boolean Output continuous control block with same number of inputs and outputs</td></tr>
<tr><td>BooleanMIMOs</td><td>Multiple Input Multiple Output continuous control block with same number of inputs and outputs of Boolean type</td></tr>
<tr><td><strong><em>BusAdaptors</em></strong></td><td>Components to send signals to the bus or receive signals from the bus</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Math.</strong></td></tr>
<tr><td>RealToInteger</td><td>Convert real to integer signals</td></tr>
<tr><td>IntegerToReal</td><td>Convert integer to real signals</td></tr>
<tr><td>Max</td><td>Pass through the largest signal</td></tr>
<tr><td>Min</td><td>Pass through the smallest signal</td></tr>
<tr><td>Edge</td><td>Indicates rising edge of Boolean signal</td></tr>
<tr><td>BooleanChange</td><td>Indicates Boolean signal changing</td></tr>
<tr><td>IntegerChange</td><td>Indicates integer signal changing</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Blocks.Sources.</strong></td></tr>
<tr><td>IntegerConstant</td><td>Generate constant signals of type Integer</td></tr>
<tr><td>IntegerStep</td><td>Generate step signals of type Integer</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Basic.</strong></td></tr>
<tr><td>HeatingResistor</td><td>Temperature dependent electrical resistor</td></tr>
<tr><td>OpAmp</td><td>Simple nonideal model of an OpAmp with limitation</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Ideal.</strong></td></tr>
<tr><td>IdealCommutingSwitch</td><td>Ideal commuting switch</td></tr>
<tr><td>IdealIntermediateSwitch</td><td>Ideal intermediate switch</td></tr>
<tr><td>ControlledIdealCommutingSwitch</td><td>Controlled ideal commuting switch</td></tr>
<tr><td>ControlledIdealIntermediateSwitch</td><td>Controlled ideal intermediate switch</td></tr>
<tr><td>IdealOpAmpLimited</td><td>Ideal operational amplifier with limitation</td></tr>
<tr><td>IdealOpeningSwitch</td><td>Ideal opener</td></tr>
<tr><td>IdealClosingSwitch</td><td>Ideal closer</td></tr>
<tr><td>ControlledIdealOpeningSwitch</td><td>Controlled ideal opener</td></tr>
<tr><td>ControlledIdealClosingSwitch</td><td>Controlled ideal closer</td></tr>

<tr><td colspan=\"2\"><strong>Modelica.Electrical.Analog.Lines.</strong></td></tr>
<tr><td>TLine1</td><td>Lossless transmission line (Z0, TD)</td></tr>
<tr><td>TLine2</td><td>Lossless transmission line (Z0, F, NL)</td></tr>
<tr><td>TLine2</td><td>Lossless transmission line (Z0, F)</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Icons.</strong></td></tr>
<tr><td>Function</td><td>Icon for a function</td></tr>
<tr><td>Record</td><td>Icon for a record</td></tr>
<tr><td>Enumeration</td><td>Icon for an enumeration</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Math.</strong></td></tr>
<tr><td>tempInterpol2</td><td>temporary routine for vectorized linear interpolation (will be removed)</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.Mechanics.Rotational.</strong></td></tr>
<tr><td>Examples.LossyGearDemo1</td><td>Example to show that gear efficiency may lead to stuck motion</td></tr>
<tr><td>Examples.LossyGearDemo2</td><td>Example to show combination of LossyGear and BearingFriction</td></tr>
<tr><td>LossyGear</td><td>Gear with mesh efficiency and bearing friction (stuck/rolling possible)</td></tr>
<tr><td>Gear2</td><td>Realistic model of a gearbox (based on LossyGear)</td></tr>
<tr><td colspan=\"2\"><strong>Modelica.SIunits.</strong></td></tr>
<tr><td><strong><em>Conversions</em></strong></td><td>Conversion functions to/from non SI units and type definitions of non SI units</td></tr>
<tr><td>EnergyFlowRate</td><td>Same definition as <em>Power</em></td></tr>
<tr><td>EnthalpyFlowRate</td><td><code>Real (final quantity=\"EnthalpyFlowRate\", final unit=\"W\")</code></td></tr>
<tr><td colspan=\"2\"><strong>Modelica.</strong></td></tr>
<tr><td><strong><em>Thermal.HeatTransfer</em></strong></td><td>1-dimensional heat transfer with lumped elements</td></tr>
<tr><td colspan=\"2\"><strong>ModelicaAdditions.Blocks.Discrete.</strong></td></tr>
<tr><td>TriggeredSampler</td><td>Triggered sampling of continuous signals</td></tr>
<tr><td>TriggeredMax</td><td>Compute maximum, absolute value of continuous signal at trigger instants</td></tr>
<tr><td colspan=\"2\"><strong>ModelicaAdditions.Blocks.Logical.Interfaces.</strong></td></tr>
<tr><td>BooleanMIRealMOs</td><td>Multiple Boolean Input Multiple Real Output continuous control block with same number of inputs and outputs</td></tr>
<tr><td>RealMIBooleanMOs</td><td>Multiple Real Input Multiple Boolean Output continuous control block with same number of inputs and outputs</td></tr>
<tr><td colspan=\"2\"><strong>ModelicaAdditions.Blocks.Logical.</strong></td></tr>
<tr><td>TriggeredTrapezoid</td><td>Triggered trapezoid generator</td></tr>
<tr><td>Hysteresis</td><td>Transform Real to Boolean with Hysteresis</td></tr>
<tr><td>OnOffController</td><td>On-off controller</td></tr>
<tr><td>Compare</td><td>True, if signal of inPort1 is larger than signal of inPort2</td></tr>
<tr><td>ZeroCrossing</td><td>Trigger zero crossing of input signal</td></tr>
<tr><td colspan=\"2\"><strong>ModelicaAdditions.</strong></td></tr>
<tr><td>Blocks.Multiplexer.Extractor</td><td>Extract scalar signal out of signal vector dependent on IntegerRealInput index</td></tr>
<tr><td>Tables.CombiTable1Ds</td><td>Table look-up in one dimension (matrix/file) with only single input</td></tr>
</table>
<p>
<strong>Package-specific Changes</strong>
</p>
<ul>
<li>All example models made <strong>encapsulated</strong></li>
<li>Upper case constants changed to lower case (cf. Modelica.Constants)</li>
<li>Introduced Modelica.SIunits.Wavelength due to typo</li>
<li>Introduced ModelicaAdditions.Blocks.Logical.Interfaces.Comparison due to typo</li>
<li>Changed these components of *.Blocks to <code>block</code> class, which have not been already of block type</li>
<li>Changed *.Interfaces.RelativeSensor to <code>partial</code> models</li>
</ul>
<p>
<strong>Class-specific Changes</strong>
</p>
<p>
<em>Modelica.SIunits</em>
</p>
<p>Removed <code>final</code> from quantity attribute for <em>Mass</em> and <em>MassFlowRate</em>.</p>
<p>
<em>Modelica.Blocks.Math.Sum</em>
</p>
<p>Implemented avoiding algorithm section, which would lead to expensive function calls.</p>
<p><em>Modelica.Blocks.Sources.Step</em></p>
<blockquote><pre>
block Step \"Generate step signals of type Real\"
        parameter Real height[:]={1} \"Heights of steps\";
<strong> // parameter Real offset[:]={0} \"Offsets of output signals\";
// parameter SIunits.Time startTime[:]={0} \"Output = offset for time < startTime\";
// extends Interfaces.MO          (final nout=max([size(height, 1); size(offset, 1); size(startTime, 1)]));
        extends Interfaces.SignalSource(final nout=max([size(height, 1); size(offset, 1); size(startTime, 1)]));</strong>
</pre></blockquote>
<p><em>Modelica.Blocks.Sources.Exponentials</em></p>
<p>Replaced usage of built-in function <code>exp</code> by Modelica.Math.exp.</p>
<p><em>Modelica.Blocks.Sources.TimeTable</em></p>
<p>Interface definition changed from</p>
<blockquote><pre>
parameter Real table[:, :]=[0, 0; 1, 1; 2, 4] \"Table matrix (time = first column)\";
</pre></blockquote>
<p>to</p>
<blockquote><pre>
parameter Real table[:, <strong>2</strong>]=[0, 0; 1, 1; 2, 4] \"Table matrix (time = first column)\";
</pre></blockquote>
<p>Did the same for subfunction <em>getInterpolationCoefficients</em>.</p>
<p>Bug in <em>getInterpolationCoefficients</em> for startTime <> 0 fixed:</p>
<blockquote><pre>
...
        end if;
  end if;
  <strong>// Take into account startTime \"a*(time - startTime) + b\"
  b := b - a*startTime;</strong>
end getInterpolationCoefficients;
</pre></blockquote>
<p><em>Modelica.Blocks.Sources.BooleanStep</em></p>
<blockquote><pre>
block BooleanStep \"Generate step signals of type Boolean\"
        parameter SIunits.Time startTime[:]={0} \"Time instants of steps\";
        <strong>parameter Boolean startValue[size(startTime, 1)]=fill(false, size(startTime, 1)) \"Output before startTime\";</strong>
        extends Interfaces.BooleanSignalSource(final nout=size(startTime, 1));
equation
        for i in 1:nout loop
<strong>//   outPort.signal[i] = time >= startTime[i];
          outPort.signal[i] = if time >= startTime[i] then not startValue[i] else startValue[i];</strong>
        end for;
end BooleanStep;
</pre></blockquote>
<p>
<em>Modelica.Electrical.Analog</em></p>
<p>Corrected table of values and default for Beta by dividing them by 1000
(consistent with the values used in the NAND-example model):
</p>
<ul>
<li>Semiconductors.PMOS</li>
<li>Semiconductors.NMOS</li>
</ul>
<p>Corrected parameter defaults, unit and description for TrapezoidCurrent.
This makes the parameters consistent with their use in the model.
Models specifying parameter values are not changed.
Models not specifying parameter values did not generate trapezoids previously.
</p>
<p>Icon layer background changed from transparent to white:</p>
<ul>
<li>Basic.Gyrator</li>
<li>Basic.EMF</li>
<li>Ideal.Idle</li>
<li>Ideal.Short</li>
</ul>
<p>Basic.Transformer: Replaced invalid escape characters '\\ ' and '\\[newline]' in documentation by '|'.</p>
<p><em>Modelica.Mechanics.Rotational</em></p>
<p>Removed arrows and names documentation from flanges in diagram layer</p>
<p><em>Modelica.Mechanics.Rotational.Interfaces.FrictionBase</em></p>
<p><em>Modelica.Mechanics.Rotational.Position</em></p>
<p>Replaced <code>reinit</code> by <code>initial equation</code></p>
<p><em>Modelica.Mechanics.Rotational.RelativeStates</em></p>
<p>Bug corrected by using modifier <code>stateSelect = StateSelect.prefer</code> as implementation</p>
<p><em>Modelica.Mechanics.Translational.Interfaces.flange_b</em></p>
<p>Attribute <strong>fillColor=7</strong> added to Rectangle on Icon layer, i.e., it is now
filled with white and not transparent any more.</p>
<p><em>Modelica.Mechanics.Translational.Position</em></p>
<p>Replaced <code>reinit</code> by <code>initial equation</code></p>
<p><em>Modelica.Mechanics.Translational.RelativeStates</em></p>
<p>Bug corrected by using modifier <code>stateSelect = StateSelect.prefer</code> as implementation</p>
<p><em>Modelica.Mechanics.Translational.Stop</em></p>
<p>Use <code>stateSelect = StateSelect.prefer</code>.</p>
<p><em>Modelica.Mechanics.Translational.Examples.PreLoad</em></p>
<p>Improved documentation and coordinate system used for example.</p>
<p><em>ModelicaAdditions.Blocks.Nonlinear.PadeDelay</em></p>
<p>Replaced <code>reinit</code> by <code>initial equation</code></p>
<p><em>ModelicaAdditions.HeatFlow1D.Interfaces</em></p>
<p>Definition of connectors <em>Surface_a</em> and <em>Surface_b</em>:<br>
<code>flow SIunits.HeatFlux q;</code> changed to <code>flow SIunits.HeatFlowRate q;</code></p>
<p><em>MultiBody.Parts.InertialSystem</em></p>
<p>Icon corrected.</p>
</html>"));
end Version_1_5;

class Version_1_4 "Version 1.4 (June 28, 2001)"
  extends Modelica.Icons.ReleaseNotes;

annotation (Documentation(info="<html>

<ul>
<li>Several minor bugs fixed.</li>
<li>New models:<br>
        Modelica.Blocks.Interfaces.IntegerRealInput/IntegerRealOutput,<br>
        Modelica.Blocks.Math.TwoInputs/TwoOutputs<br>
        Modelica.Electrical.Analog.Ideal.IdealOpAmp3Pin,<br>
        Modelica.Mechanics.Rotational.Move,<br>
        Modelica.Mechanics.Translational.Move.<br>
        </li>
</ul>
<hr>
<h4>Version 1.4.1beta1 (February 12, 2001)</h4>
<p> Adapted to Modelica 1.4</p>
<hr>
<h4>Version 1.3.2beta2 (June 20, 2000)</h4>
<ul>
        <li>New subpackage Modelica.Mechanics.<strong>Translational</strong></li>
        <li>Changes to Modelica.Mechanics.<strong>Rotational</strong>:<br>
           New elements:
<blockquote><pre>
IdealGearR2T    Ideal gear transforming rotational in translational motion.
Position        Forced movement of a flange with a reference angle
                                   given as input signal
RelativeStates  Definition of relative state variables
</pre></blockquote>
</li>
        <li>Changes to Modelica.<strong>SIunits</strong>:<br>
          Introduced new types:<br>
          type Temperature = ThermodynamicTemperature;<br>
          types DerDensityByEnthalpy, DerDensityByPressure,
          DerDensityByTemperature, DerEnthalpyByPressure,
          DerEnergyByDensity, DerEnergyByPressure<br>
          Attribute \"final\" removed from min and max values
          in order that these values can still be changed to narrow
          the allowed range of values.<br>
          Quantity=\"Stress\" removed from type \"Stress\", in order
          that a type \"Stress\" can be connected to a type \"Pressure\".</li>
        <li>Changes to Modelica.<strong>Icons</strong>:<br>
           New icons for motors and gearboxes.</li>
        <li>Changes to Modelica.<strong>Blocks.Interfaces</strong>:<br>
           Introduced a replaceable signal type into
           Blocks.Interfaces.RealInput/RealOutput:
<blockquote><pre>
replaceable type SignalType = Real
</pre></blockquote>
           in order that the type of the signal of an input/output block
           can be changed to a physical type, for example:
<blockquote><pre>
Sine sin1(outPort(redeclare type SignalType=Modelica.SIunits.Torque))
</pre></blockquote>
</li>
</ul>
<hr>
<h4>Version 1.3.1 (Dec. 13, 1999)</h4>
<p>
First official release of the library.
</p>
</html>"));
end Version_1_4;
 annotation (Documentation(info="<html>

<p>
This section summarizes the changes that have been performed
on the Modelica standard library. Furthermore, it is explained in
<a href=\"modelica://Modelica.UsersGuide.ReleaseNotes.VersionManagement\">Modelica.UsersGuide.ReleaseNotes.VersionManagement</a>
how the versions are managed.
This is especially important for maintenance (bug fix) releases where the
main version number is not changed.
</p>

<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tr><td><a href=\"modelica://Modelica.UsersGuide.ReleaseNotes.Version_4_1_0\">Version 4.1.0</a></td><td>March 15, 2024</td></tr>
<tr><td><a href=\"modelica://Modelica.UsersGuide.ReleaseNotes.Version_4_0_0\">Version 4.0.0</a></td><td>June 4, 2020</td></tr>
<tr><td><a href=\"modelica://Modelica.UsersGuide.ReleaseNotes.Version_3_2_3\">Version 3.2.3</a></td><td>January 23, 2019</td></tr>
<tr><td><a href=\"modelica://Modelica.UsersGuide.ReleaseNotes.Version_3_2_2\">Version 3.2.2</a></td><td>April 3, 2016</td></tr>
<tr><td><a href=\"modelica://Modelica.UsersGuide.ReleaseNotes.Version_3_2_1\">Version 3.2.1</a></td><td>August 14, 2013</td></tr>
<tr><td><a href=\"modelica://Modelica.UsersGuide.ReleaseNotes.Version_3_2\">Version 3.2</a></td><td>Oct. 25, 2010</td></tr>
<tr><td><a href=\"modelica://Modelica.UsersGuide.ReleaseNotes.Version_3_1\">Version 3.1</a></td><td>August 14, 2009</td></tr>
<tr><td><a href=\"modelica://Modelica.UsersGuide.ReleaseNotes.Version_3_0_1\">Version 3.0.1</a></td><td>Jan. 27, 2009</td></tr>
<tr><td><a href=\"modelica://Modelica.UsersGuide.ReleaseNotes.Version_3_0\">Version 3.0</a></td><td>March 1, 2008</td></tr>
<tr><td><a href=\"modelica://Modelica.UsersGuide.ReleaseNotes.Version_2_2_2\">Version 2.2.2</a></td><td>Aug. 31, 2007</td></tr>
<tr><td><a href=\"modelica://Modelica.UsersGuide.ReleaseNotes.Version_2_2_1\">Version 2.2.1</a></td><td>March 24, 2006</td></tr>
<tr><td><a href=\"modelica://Modelica.UsersGuide.ReleaseNotes.Version_2_2\">Version 2.2</a></td><td>April 6, 2005</td></tr>
<tr><td><a href=\"modelica://Modelica.UsersGuide.ReleaseNotes.Version_2_1\">Version 2.1</a></td><td>Nov. 11, 2004</td></tr>
<tr><td><a href=\"modelica://Modelica.UsersGuide.ReleaseNotes.Version_1_6\">Version 1.6</a></td><td>June 21, 2004</td></tr>
<tr><td><a href=\"modelica://Modelica.UsersGuide.ReleaseNotes.Version_1_5\">Version 1.5</a></td><td>Dec. 16, 2002</td></tr>
<tr><td><a href=\"modelica://Modelica.UsersGuide.ReleaseNotes.Version_1_4\">Version 1.4</a></td><td>June 28, 2001</td></tr>
</table>
</html>"));
end ReleaseNotes;
