FILE(REMOVE_RECURSE
  "msg_gen"
  "src/drone_demo/msg"
  "msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "src/drone_demo/msg/__init__.py"
  "src/drone_demo/msg/_Navdata.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
