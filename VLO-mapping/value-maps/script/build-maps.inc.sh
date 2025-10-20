# Use the vlo_mapping command (see build.sh) to generate XML mapping files from CSV files:
#
#	vlo_mapping [OPTIONS] <base-name>
#
#		OPTIONS: 
#			-s=<SKOS>
#			-t=<TMPL>
#			-d
#
#		base-name:
#			file name of map without extension, for example if 'mymap.csv' has to be
#			built, provide 'mymap'
#

vlo_mapping -t=dist/toolportal_resourceClass_profile_template.xml toolportal_profile-resourceClass
vlo_mapping -t=dist/toolportal_resourceClass_template.xml toolportal_resourceClass
vlo_mapping -t=dist/toolportal_collection_template.xml toolportal_collection
vlo_mapping -t=dist/toolportal_toolType_template.xml toolportal_toolType
vlo_mapping -t=dist/toolportal_keywords_task_template.xml toolportal_keywords-task
vlo_mapping -t=dist/toolportal_task_template.xml toolportal_task
