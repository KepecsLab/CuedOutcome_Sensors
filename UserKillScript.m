% Sensors Project

%% Name and save figure
% Written for Operant to save figure that's already in BpodSystem struct.  
% TODO after quick analysis, save that fig to BpodSystem.  Then do this.

% %  saves into Session_Figures folder alongside Session Settings and Session
% %  Data
% % Uncommented in order to get animalName
[sessionDataDir, sessionString, ~] = fileparts(BpodSystem.DataPath);
sessionParts = split(sessionString, '_');
animalName = sessionParts{1};
% 
% sessionFoldersDir = fileparts(sessionDataDir);
% userHome = getenv('HOME');
% sessionFoldersFullDir = strcat(userHome, sessionFoldersDir(2:end))
% 
% photosDir = [sessionFoldersFullDir, '/Session_Figures'];
% mkdir(photosDir);
% 
% % for "outcome" figure.. could be any in BpodSystem.ProtocolFigures struct
% outcomeFN = strcat(sessionString, '.png'); %saves as png
% outcomeFullPath = strcat(photosDir, '/', outcomeFN);
% saveas(BpodSystem.ProtocolFigures.OutcomePlotFig, outcomeFullPath);

%% Don't do anything if Dummy Subject
if regexp(animalName, 'Dummy')
    return
end
%% Pop up surveys/reminders/instructions

% Remind user to clean up
msgbox({'Stop Bonsai' 'Switch off photodetectors'}, 'Please remember to:', 'warn')

% Initiate GDocs survey
surveyLink = 'https://docs.google.com/forms/d/e/1FAIpQLSdg4kv6s4wTSwCwDNBg8obF0-nFfm-HpvFJBaa2kcWigvgSeA/viewform?usp=sf_link';
web(surveyLink, '-browser')


