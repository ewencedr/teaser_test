 
within ArchetypeExample.OfficeBuilding.OfficeBuilding_DataBase;
record OfficeBuilding_Office "OfficeBuilding_Office"
  extends AixLib.DataBase.ThermalZones.ZoneBaseRecord(
    T_start = 293.15,
    withAirCap = true,
    VAir = 7875.0,
    AZone = 2250.0,
    hRad = 5.0,
    lat = 0.88645272708792,
    nOrientations = 6,
    AWin = {155.53749159771826, 155.53749159771826, 20.317554457982133, 20.317554457982133, 0.0, 0.0},
    ATransparent = {155.53749159771826, 155.53749159771826, 20.317554457982133, 20.317554457982133, 0.0, 0.0},
    hConWin = 2.6999999999999997,
    RWin = 0.00046420421189033234,
    gWin = 0.78,
    UWin= 3.001782134105591,
    ratioWinConRad = 0.029999999999999995,
    AExt = {390.73567665235294, 390.73567665235294, 51.04102752019142, 51.04102752019142, 646.875, 646.875},
    hConExt = 2.1058016925701017,
    nExt = 1,
    RExt = {1.4616722105241825e-05},
    RExtRem = 0.000669458496415607 ,
    CExt = {658448941.907483},
    AInt = 7312.5,
    hConInt = 2.2384615384615385,
    nInt = 1,
    RInt = {6.973883211581484e-06},
    CInt = {973348594.470213},
    AFloor = 0.0,
    hConFloor = 0.0,
    nFloor = 1,
    RFloor = {0.00001},
    RFloorRem =  0.00001,
    CFloor = {0.00001},
    ARoof = 0.0,
    hConRoof = 0.0,
    nRoof = 1,
    RRoof = {0.00001},
    RRoofRem = 0.00001,
    CRoof = {0.00001},
    nOrientationsRoof = 1,
    tiltRoof = {0.0},
    aziRoof = {0.0},
    wfRoof = {0.0},
    aRoof = 0.0,
    aExt = 0.5,
    TSoil = 286.15,
    hConWallOut = 20.0,
    hRadWall = 5.0,
    hConWinOut = 19.999999999999993,
    hConRoofOut = 0.0,
    hRadRoof = 0.0,
    tiltExtWalls = {1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 0.0, 0.0},
    aziExtWalls = {3.141592653589793, 0.0, 1.5707963267948966, -1.5707963267948966, 0.0, 0.0},
    wfWall = {0.16736751629072985, 0.16736751629072985, 0.021862887152180363, 0.021862887152180363, 0.29290345872546325, 0.0},
    wfWin = {0.44223209707742267, 0.44223209707742267, 0.05776790292257733, 0.05776790292257733, 0.0, 0.0},
    wfGro = 0.3286357343887163,
    specificPeople = 0.07142857142857142,
    fixedHeatFlowRatePersons = 70,
    internalGainsMoistureNoPeople = 0.5,
    activityDegree = 1.2,
    ratioConvectiveHeatPeople = 0.5,
    internalGainsMachinesSpecific = 7.0,
    ratioConvectiveHeatMachines = 0.75,
    lightingPowerSpecific = 3.3333333333333335,
    ratioConvectiveHeatLighting = 0.9,
    useConstantACHrate = false,
    baseACH = 0.2,
    maxUserACH = 1.0,
    maxOverheatingACH = {3.0, 2.0},
    maxSummerACH = {1.0, 283.15, 290.15},
    winterReduction = {0.2, 273.15, 283.15},
    maxIrr = {100.0, 100.0, 100.0, 100.0, 9999.9, 9999.9},
    shadingFactor = {1.0, 1.0, 1.0, 1.0, 1.0, 1.0},
    withAHU = false,
    minAHU = 0.0,
    maxAHU = 2.6,
    hHeat = 108847.79327247574,
    lHeat = 0,
    KRHeat = 100,
    TNHeat = 50,
    HeaterOn = true,
    hCool = 0,
    lCool = -108847.79327247574,
    heaLoadFacOut = 3307.110645601104,
    heaLoadFacGrd = 431.46465903434546,
    KRCool = 10000,
    TNCool = 1,
    CoolerOn = false,
    withIdealThresholds = false,
    TThresholdHeater = 288.15,
    TThresholdCooler = 295.15);
end OfficeBuilding_Office;
