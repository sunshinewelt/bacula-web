<?php

/*
 * This config file contains Bacula-Web application settings
 * Do not modify it unless you know what you're doing.
 */

$app = [ 'name' => 'Bacula-Web', 'version' => '8.2.1',
        'routes' => [   'home' => 'Dashboard', 
                        'test' => 'Test',
                        'jobs' => 'Jobs',
                        'joblogs' => 'JobLogs',
                        'volumes' => 'Volumes',
                        'pools' => 'Pools',
                        'client' => 'Client',
                        'backupjob' => 'BackupJob',
                        'login' => 'Login',
                        'usersettings' => 'UserSettings',
                        'settings' => 'Settings',
                        'directors' => 'Directors'],
    'defaultview' => 'DashboardView' ];
