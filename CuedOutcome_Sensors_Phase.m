function [trialsNames, trialsMatrix]=CuedOutcome_Sensors_Phase(S,PhaseName)

switch PhaseName
	case 'L1-CuedReward' 
        trialsNames={'Cue A Reward','Uncued Reward',...
            'blank','blank',...
            'blank','blank'};
        trialsMatrix=[...
        %  1.type, 2.proba, 3.sound, 4.delay,   5.valve,                6.Outcome         	7.Marker
            1,   0.8,      1,    S.GUI.Delay,   S.GUI.RewardValve,      S.InterRew,         double('o');...   
            2,   0.2,      5,    S.GUI.Delay,   S.GUI.RewardValve,      S.InterRew,         double('o')];
        
	case 'L2-RewardSize' 
        trialsNames={'Cue A Reward','Cue A Small Reward',...
            'Cue A Big Reward','blank',...
            'blank','blank'};
        trialsMatrix=[...
        %  1.type, 2.proba, 3.sound, 4.delay,   5.valve,                6.Outcome         	7.Marker
            1,   0.8,     1,    S.GUI.Delay,   S.GUI.RewardValve,      S.InterRew,         double('o');...   
            2,   0.1,     1,    S.GUI.Delay,   S.GUI.RewardValve,      S.SmallRew,         double('s');...   
            3,   0.1,     1,    S.GUI.Delay,   S.GUI.RewardValve,      S.LargeRew,         double('d')];
   
    case 'L3a-SecondaryCue' 
        trialsNames={'Cue B, Cue A Reward',...
            'blank','blank','blank','blank','blank'};
        trialsMatrix=[...
        %  1.type, 2.proba, 3.sound, 4.delay,   5.valve,                6.Outcome         	7.Marker
            1,   1,       1,    S.GUI.Delay,  S.GUI.RewardValve,  	S.SmallRew,         double('o')];       
    case 'L3b-SecondaryCue' 
        trialsNames={'Cue B, Cue A Reward',...
            'blank','blank','blank','blank','blank'};
        trialsMatrix=[...
        %  1.type, 2.proba, 3.sound, 4.delay,   5.valve,                6.Outcome         	7.Marker
            1,   1,       1,    S.GUI.Delay,  S.GUI.RewardValve,  	S.SmallRew,         double('o')];    
        
	case 'V1-Probability' 
        trialsNames={'Cue A Reward','Cue B Reward','Cue B Omission'...
            'blank','blank','blank'};
        trialsMatrix=[...
        %  1.type, 2.proba, 3.sound, 4.delay, 	5.valve,                6.Outcome         	7.Marker
            1,   0.5,       1,    S.GUI.Delay,  S.GUI.RewardValve,  	S.InterRew,         double('o');...   
            2,   0.25,      2,    S.GUI.Delay,  S.GUI.RewardValve,      S.InterRew, 	    double('o');...   
            3,   0.25,    	2,    S.GUI.Delay,  S.GUI.OmissionValve,	S.InterRew,         double('s')];
        
	case 'V2-Extinction' 
        trialsNames={'Cue A Omission','Cue B Reward','Cue B Omission'...
            'blank','blank','blank'};
        trialsMatrix=[...
        %  1.type, 2.proba, 3.sound, 4.delay, 	5.valve,                6.Outcome         	7.Marker
            1,   0.5,       1,    S.GUI.Delay,  S.GUI.OmissionValve,  	S.InterRew,         double('s');...   
            2,   0.25,      2,    S.GUI.Delay,  S.GUI.RewardValve,      S.InterRew, 	    double('o');...   
            3,   0.25,    	2,    S.GUI.Delay,  S.GUI.OmissionValve,	S.InterRew,         double('s')];

	case 'S-RewPun' 
        trialsNames={'Cue A Big Reward','Cue B Small Reward',...
                     'Cue C Big Punish.','Cue D Small Punish.',...
                     'blank','blank'};
        trialsMatrix=[...
        % 1.type, 2.proba, 3.sound, 4.delay,    5.valve,                6.Outcome               7.Marker
            1,   0.25,       1,    S.GUI.Delay,  S.GUI.RewardValve,      S.LargeRew,            double('o');...   
            2,   0.25,       2,    S.GUI.Delay,  S.GUI.RewardValve, 	 S.SmallRew,            double('d');...   
            3,   0.25,       3,    S.GUI.Delay,  S.GUI.PunishValve,	     S.GUI.PunishTime*2,    double('s');...   
            4,   0.25,       4,    S.GUI.Delay,  S.GUI.PunishValve,      S.GUI.PunishTime/2,    double('d')];

	case 'Habituation' 
        trialsNames={'Habituation','blank'...
                     'blank','blank',...
                     'blank','blank'};
        trialsMatrix=[...
        % 1.type, 2.proba, 3.sound, 4.delay,    5.valve,                6.Outcome               7.Marker
            1,   1,          5,    S.GUI.Delay,  S.GUI.OmissionValve,    S.LargeRew,            double('o')];

end    
end