param($installPath, $toolsPath, $package, $project)

# There is no equivalent uninstall because NuGet does not support it: http://nuget.codeplex.com/workitem/2074

$destinationPath = (get-item $installPath).parent.parent.FullName
copy-item "$installPath\Build.proj" "$destinationPath\Build.proj" -force
copy-item "$installPath\Projects.targets" "$destinationPath\Projects.targets" -force
