 
within ArchetypeExample.OfficeBuilding.OfficeBuilding_DataBase;
record OfficeBuilding_Restroom "OfficeBuilding_Restroom"
  extends AixLib.DataBase.ThermalZones.ZoneBaseRecord(
    T_start = 293.15,
    withAirCap = true,
    VAir = 630.0,
    AZone = 180.0,
    hRad = 5.000000000000001,
    lat = 0.88645272708792,
    nOrientations = 6,
    AWin = {12.442999327817459, 12.442999327817459, 1.6254043566385707, 1.6254043566385707, 0.0, 0.0},
    ATransparent = {12.442999327817459, 12.442999327817459, 1.6254043566385707, 1.6254043566385707, 0.0, 0.0},
    hConWin = 2.7000000000000006,
    RWin = 0.005802552648629155,
    gWin = 0.78,
    UWin= 3.001782134105592,
    ratioWinConRad = 0.030000000000000002,
    AExt = {31.258854132188233, 31.258854132188233, 4.083282201615313, 4.083282201615313, 51.74999999999999, 51.74999999999999},
    hConExt = 2.105801692570102,
    nExt = 1,
    RExt = {0.00018270902631552298},
    RExtRem = 0.008368231205195089 ,
    CExt = {52675915.35259862},
    AInt = 795.0,
    hConInt = 2.360377358490566,
    nInt = 1,
    RInt = {7.594879792203812e-05},
    CInt = {89994934.90951525},
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
    hConWallOut = 20.000000000000004,
    hRadWall = 5.000000000000001,
    hConWinOut = 20.0,
    hConRoofOut = 0.0,
    hRadRoof = 0.0,
    tiltExtWalls = {1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 0.0, 0.0},
    aziExtWalls = {3.141592653589793, 0.0, 1.5707963267948966, -1.5707963267948966, 0.0, 0.0},
    wfWall = {0.16736751629072993, 0.16736751629072993, 0.02186288715218037, 0.02186288715218037, 0.29290345872546325, 0.0},
    wfWin = {0.4422320970774226, 0.4422320970774226, 0.05776790292257734, 0.05776790292257734, 0.0, 0.0},
    wfGro = 0.3286357343887163,
    specificPeople = 0.0,
    fixedHeatFlowRatePersons = 70,
    internalGainsMoistureNoPeople = 10,
    activityDegree = 1.2,
    ratioConvectiveHeatPeople = 0.5,
    internalGainsMachinesSpecific = 0.0,
    ratioConvectiveHeatMachines = 0.75,
    lightingPowerSpecific = 11.1,
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
    maxAHU = 8.0,
    hHeat = 8707.82346179806,
    lHeat = 0,
    KRHeat = 100,
    TNHeat = 50,
    HeaterOn = true,
    hCool = 0,
    lCool = -8707.82346179806,
    heaLoadFacOut = 264.5688516480883,
    heaLoadFacGrd = 34.51717272274763,
    KRCool = 10000,
    TNCool = 1,
    CoolerOn = false,
    withIdealThresholds = false,
    TThresholdHeater = 288.15,
    TThresholdCooler = 295.15);
end OfficeBuilding_Restroom;
