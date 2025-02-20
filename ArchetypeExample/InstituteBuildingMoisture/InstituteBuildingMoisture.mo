
within ArchetypeExample.InstituteBuildingMoisture;
model InstituteBuildingMoisture
  "This is the simulation model of InstituteBuildingMoisture with traceable ID 2"


AixLib.ThermalZones.ReducedOrder.Multizone.MultizoneEquipped multizone(
    buildingID=2,
    energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
    T_start = 293.15,
    VAir = 15119.999999999998,
    ABuilding=3600.0,
    ASurTot=20051.717757312494,
    numZones = 7,
    internalGainsMode = 3,
        use_C_flow = true,
        use_moisture_balance = true,
        redeclare package Medium = AixLib.Media.Air(extraPropertiesNames={"C_flow"}),
    zoneParam = {
      InstituteBuildingMoisture_DataBase.InstituteBuildingMoisture_Office(),
      InstituteBuildingMoisture_DataBase.InstituteBuildingMoisture_Floor(),
      InstituteBuildingMoisture_DataBase.InstituteBuildingMoisture_Storage(),
      InstituteBuildingMoisture_DataBase.InstituteBuildingMoisture_Meeting(),
      InstituteBuildingMoisture_DataBase.InstituteBuildingMoisture_Restroom(),
      InstituteBuildingMoisture_DataBase.InstituteBuildingMoisture_ICT(),
      InstituteBuildingMoisture_DataBase.InstituteBuildingMoisture_Laboratory()
      },
  heatAHU=true,
  coolAHU=true,
  dehuAHU=true,
  huAHU=true,
  BPFDehuAHU=0.2,
  HRS=true,
  sampleRateAHU=1800,
  effFanAHU_sup=0.7,
  effFanAHU_eta=0.7,
  effHRSAHU_enabled=0.65,
  effHRSAHU_disabled=0.2,
  dpAHU_sup=800,
  dpAHU_eta=800,
  zone(ROM(extWallRC(thermCapExt(each der_T(fixed=true))),
           intWallRC(thermCapInt(each der_T(fixed=true))),floorRC
           (thermCapExt(each der_T(fixed=true))),roofRC(thermCapExt(each
           der_T(fixed=true))))),
   redeclare model corG =
        AixLib.ThermalZones.ReducedOrder.SolarGain.CorrectionGDoublePane,
  redeclare model AHUMod = AixLib.Airflow.AirHandlingUnit.AHU)
    "Multizone"
    annotation (Placement(transformation(extent={{32,-8},{52,12}})));

  AixLib.BoundaryConditions.WeatherData.ReaderTMY3 weaDat(
    calTSky=AixLib.BoundaryConditions.Types.SkyTemperatureCalculation.HorizontalRadiation,
    computeWetBulbTemperature=false,
    filNam=Modelica.Utilities.Files.loadResource(
        "modelica://ArchetypeExample/DEU_BW_Mannheim_107290_TRY2010_12_Jahr_BBSR.mos"))
    "Weather data reader"
    annotation (Placement(transformation(extent={{-82,30},{-62,50}})));

  Modelica.Blocks.Sources.CombiTimeTable tableInternalGains(
    tableOnFile=true,
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic,
    tableName="Internals",
    fileName=Modelica.Utilities.Files.loadResource(
        "modelica://ArchetypeExample/InstituteBuildingMoisture/InternalGains_InstituteBuildingMoisture.txt"),
    columns=2:22)
    "Profiles for internal gains"
    annotation (Placement(transformation(extent={{72,-42},{56,-26}})));

  Modelica.Blocks.Sources.CombiTimeTable tableAHU(
    tableOnFile=true,
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic,
    tableName="AHU",
    columns=2:5,
    fileName=Modelica.Utilities.Files.loadResource(
        "modelica://ArchetypeExample/InstituteBuildingMoisture/AHU_InstituteBuildingMoisture.txt"))
    "Boundary conditions for air handling unit"
    annotation (Placement(transformation(extent={{-64,-6},{-48,10}})));

  Modelica.Blocks.Sources.CombiTimeTable tableTSet(
    tableOnFile=true,
    tableName="Tset",
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic,
    fileName=Modelica.Utilities.Files.loadResource(
        "modelica://ArchetypeExample/InstituteBuildingMoisture/TsetHeat_InstituteBuildingMoisture.txt"),
    columns=2:8)
    "Set points for heater"
    annotation (Placement(transformation(extent={{72,-66},{56,-50}})));

    Modelica.Blocks.Sources.CombiTimeTable tableTSetCool(
      tableOnFile=true,
      tableName="Tset",
      extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic,
      fileName=Modelica.Utilities.Files.loadResource(
          "modelica://ArchetypeExample/InstituteBuildingMoisture/TsetCool_InstituteBuildingMoisture.txt"),
      columns=2:8)
      "Set points for cooler"
    annotation (Placement(transformation(extent={{72,-90},{56,-74}})));

equation
  connect(weaDat.weaBus, multizone.weaBus) annotation (Line(
      points={{-62,40},{-32,40},{-32,6},{34,6}},
      color={255,204,51},
      thickness=0.5));

  connect(tableInternalGains.y, multizone.intGains)
    annotation (Line(points={{55.2,-34},{48,-34},{48,-9}}, color={0,0,127}));

  connect(tableAHU.y, multizone.AHU)
    annotation (Line(points={{-47.2,2},{14,2},{33,2}}, color={0,0,127}));

  connect(tableTSet.y, multizone.TSetHeat) annotation (Line(points={{55.2,-58},
          {36.8,-58},{36.8,-9}}, color={0,0,127}));

  connect(tableTSetCool.y, multizone.TSetCool) annotation (Line(points={{55.2,-58},
          {36.8,-58},{36.8,-9}}, color={0,0,127}));



  annotation (experiment(
      StartTime=0,
      StopTime=31536000,
      Interval=3600,
      Tolerance=0.0001,
      __Dymola_Algorithm="Cvode"),
      __Dymola_experimentSetupOutput(equidistant=true,
      events=false),
      __Dymola_Commands(file=
        "Resources/Scripts/Dymola/InstituteBuildingMoisture/InstituteBuildingMoisture.mos"
      "Simulate and Plot"),
    __Dymola_selections={
        Selection(name="BuildingSimulationOutputs",
        match={MatchVariable(name="*multizone.PHeater*|*multizone.PHeatAHU",newName="HeatingDemands.%path%"),MatchVariable(name="*multizone.PCooler*|*multizone.PCoolAHU",newName="CoolingDemands.%path%"),MatchVariable(name="*multizone.TAir*|*multizone.TRad*",newName="Temperatures.%path%")})},
    Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
        graphics={
        Line(points={{80,-82}}, color={28,108,200}),
        Rectangle(
          extent={{-80,20},{80,-80}},
          lineColor={0,0,0},
          lineThickness=0.5),
        Line(
          points={{-80,20},{0,100},{80,20}},
          color={0,0,0},
          thickness=0.5),
        Text(
          extent={{-52,-10},{62,-48}},
          lineColor={0,0,0},
          lineThickness=0.5,
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid,
          textString="TB")}));
end InstituteBuildingMoisture;
