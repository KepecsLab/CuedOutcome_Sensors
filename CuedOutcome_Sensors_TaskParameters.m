function CuedOutcome_Sensors_TaskParameters(Param)
%
%
global S
    S.Names.Phase={'L1-CuedReward','L2-RewardSize','L3-SecondaryCue','V1-Probability','V2-Extinction','S-RewPun'};
    S.Names.StateToZero={'PostOutcome','CueDelivery'};
    S.Names.OutcomePlot={'Collect','GoNoGo'};
    S.Names.Symbols={'Reward','Punish','Omission','Small','Inter','Big'};
    S.Names.Rig=Param.rig;

%% General Parameters    
    S.GUI.Phase = 1;
    S.GUIMeta.Phase.Style='popupmenu';
    S.GUIMeta.Phase.String=S.Names.Phase;
    S.GUI.MaxTrials=100;
    S.GUI.Wheel=1;
    S.GUIMeta.Wheel.Style='checkbox';
    S.GUIMeta.Wheel.String='Auto';
 	S.GUI.Photometry=1;
    S.GUIMeta.Photometry.Style='checkbox';
    S.GUIMeta.Photometry.String='Auto';
    S.GUI.DbleFibers=1;
    S.GUIMeta.DbleFibers.Style='checkbox';
    S.GUIMeta.DbleFibers.String='Auto';

    S.GUIPanels.General={'Phase','MaxTrials','Wheel','Photometry','DbleFibers'};
 % Plot   
    S.GUI.NidaqMin=-5;
    S.GUI.NidaqMax=10;
    S.GUI.TimeMin=-4;
    S.GUI.TimeMax=4;
    S.GUIPanels.OnlinePlot={'NidaqMin','NidaqMax',...
                            'TimeMin','TimeMax'};
    S.GUITabs.Overview={'OnlinePlot','General'};
    
%% Nidaq and Photometry
    S.GUI.Modulation=1;
    S.GUIMeta.Modulation.Style='checkbox';
    S.GUIMeta.Modulation.String='Auto';
	S.GUI.NidaqDuration=25;
    S.GUI.NidaqSamplingRate=6100;
    S.GUI.DecimateFactor=610;
    S.GUI.LED1_Name='470-BLA';
    S.GUI.LED1_Amp=Param.LED1Amp;
    S.GUI.LED1_Freq=211;
    S.GUI.LED2_Name='565-XX';
    S.GUI.LED2_Amp=Param.LED2Amp;
    S.GUI.LED2_Freq=531;
    S.GUI.LED1b_Name='470-VS';
    S.GUI.LED1b_Amp=Param.LED1bAmp;
    S.GUI.LED1b_Freq=531;
    S.GUIPanels.Photometry={'Modulation','NidaqDuration',...
                            'NidaqSamplingRate','DecimateFactor'...
                            'LED1_Name','LED1_Amp','LED1_Freq',...
                            'LED2_Name','LED2_Amp','LED2_Freq',...
                            'LED1b_Name','LED1b_Amp','LED1b_Freq'};                       
    S.GUITabs.Photometry={'Photometry'}; 
%% Task Parameters
    S.GUI.PreCue=3;
    S.GUI.Delay=1;
    S.GUI.DelayIncrement=0;
    S.GUI.PostOutcome=5;
    S.GUI.TimeNoLick=2;
    S.GUI.ITI=3;
    S.GUIPanels.Timing={'PreCue','Delay','DelayIncrement','PostOutcome','TimeNoLick','ITI'};
    S.GUI.BaselineBegin=1.5;
    S.GUI.BaselineEnd=2.5;
    S.GUI.StateToZero=1;
    S.GUIMeta.StateToZero.Style='popupmenu';
    S.GUIMeta.StateToZero.String=S.Names.StateToZero;
    S.GUIPanels.Plot={'BaselineBegin','BaselineEnd',...
                            'StateToZero'};    
    S.GUITabs.Timing={'Plot','Timing'};
    
    S.GUI.CueDuration=0.5;
    S.GUI.CueA=4000;
    S.GUI.CueB=20000;
    S.GUI.CueC=10000;
    S.GUI.CueD=15000;
	S.GUI.SoundSamplingRate=192000;
    S.GUIPanels.Cue={'CueDuration','CueA','CueB','CueC','CueD','SoundSamplingRate'};

    S.GUI.RewardValve=1;
    S.GUI.SmallReward=2;
    S.GUI.InterReward=5;
    S.GUI.LargeReward=8;
    S.GUI.PunishValve=2;
    S.GUI.PunishTime=0.2;
    S.GUI.OmissionValve=4;
    S.GUIPanels.Outcome={'RewardValve','SmallReward','InterReward','LargeReward','PunishValve','PunishTime','OmissionValve'};
    
    S.GUITabs.Task={'Outcome','Cue'};
end
