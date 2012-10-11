FILE(REMOVE_RECURSE
  "msg_gen"
  "srv_gen"
  "src/drone_demo/msg"
  "src/drone_demo/srv"
  "msg_gen"
  "srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_py"
  "src/drone_demo/srv/__init__.py"
  "src/drone_demo/srv/_CamSelect.py"
  "src/drone_demo/srv/_HullSelect.py"
  "src/drone_demo/srv/_LedAnim.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
