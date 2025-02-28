 
within ArchetypeExample.InstituteBuildingMoisture.InstituteBuildingMoisture_DataBase;
record InstituteBuildingMoisture_Storage "InstituteBuildingMoisture_Storage"
  extends AixLib.DataBase.ThermalZones.ZoneBaseRecord(
    T_start = 293.15,
    withAirCap = true,
    VAir = 6048.0,
    AZone = 1440.0,
    hRad = 5.0,
    lat = 0.88645272708792,
    nOrientations = 6,
    AWin = {98.29856482816517, 98.29856482816517, 12.038012649246312, 12.038012649246312, 0.0, 0.0},
    ATransparent = {98.29856482816517, 98.29856482816517, 12.038012649246312, 12.038012649246312, 0.0, 0.0},
    hConWin = 2.6999999999999997,
    RWin = 0.0007398512345367666,
    gWin = 0.7800000000000001,
    UWin= 3.001782134105591,
    ratioWinConRad = 0.03,
    AExt = {445.9181562940091, 445.9181562940091, 54.60881769107793, 54.60881769107793, 552.0, 552.0},
    hConExt = 2.175547882720751,
    nExt = 1,
    RExt = {1.4641071125442073e-05},
    RExtRem = 0.0004857501820126088 ,
    CExt = {668951198.895346},
    AInt = 4944.0,
    hConInt = 2.311650485436894,
    nInt = 1,
    RInt = {1.1557883462692105e-05},
    CInt = {599112264.400279},
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
    hConWinOut = 20.0,
    hConRoofOut = 0.0,
    hRadRoof = 0.0,
    tiltExtWalls = {1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 0.0, 0.0},
    aziExtWalls = {3.141592653589793, 0.0, 1.5707963267948966, -1.5707963267948966, 0.0, 0.0},
    wfWall = {0.19868548874635938, 0.19868548874635938, 0.024331773621836764, 0.024331773621836764, 0.23320081260998113, 0.0},
    wfWin = {0.44544867656552617, 0.44544867656552617, 0.05455132343447385, 0.05455132343447385, 0.0, 0.0},
    wfGro = 0.3207646626536265,
    specificPeople = 0.025,
    fixedHeatFlowRatePersons = 90,
    internalGainsMoistureNoPeople = 0.0,
    activityDegree = 2.0,
    ratioConvectiveHeatPeople = 0.5,
    internalGainsMachinesSpecific = 0.0,
    ratioConvectiveHeatMachines = 0.75,
    lightingPowerSpecific = 11.3,
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
    maxAHU = 0.5,
    hHeat = 96163.63794542578,
    lHeat = 0,
    KRHeat = 100,
    TNHeat = 50,
    HeaterOn = true,
    hCool = 0,
    lCool = -96163.63794542578,
    heaLoadFacOut = 2884.2735065563184,
    heaLoadFacGrd = 552.4122479462285,
    KRCool = 10000,
    TNCool = 1,
    CoolerOn = false,
    withIdealThresholds = false,
    TThresholdHeater = 288.15,
    TThresholdCooler = 295.15);
end InstituteBuildingMoisture_Storage;
