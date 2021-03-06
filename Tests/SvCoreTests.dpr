program SvCoreTests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

{$R *.dres}

uses
  Forms,
  TestFramework,
  GUITestRunner,
  TextTestRunner,
  TestSvThreading in 'TestSvThreading.pas',
  SvThreading in '..\Core\SvThreading.pas',
  TestSvDesignPatterns in 'TestSvDesignPatterns.pas',
  SvDesignPatterns in '..\Core\SvDesignPatterns.pas',
  SvHelpers in '..\Core\SvHelpers.pas',
  TestSvHelpers in 'TestSvHelpers.pas',
  SvClasses in '..\Core\SvClasses.pas',
  TestSvClasses in 'TestSvClasses.pas',
  SvRttiUtils in '..\Core\SvRttiUtils.pas',
  SvContainers in '..\Core\SvContainers.pas',
  TestSvContainers in 'TestSvContainers.pas',
  SvCollections.Tries in '..\Core\SvCollections.Tries.pas',
  TestSvEvents in 'TestSvEvents.pas',
  SvDelegates in '..\Core\SvDelegates.pas';

{$R *.RES}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  if IsConsole then
    with TextTestRunner.RunRegisteredTests do
      Free
  else
    GUITestRunner.RunRegisteredTests;
end.

