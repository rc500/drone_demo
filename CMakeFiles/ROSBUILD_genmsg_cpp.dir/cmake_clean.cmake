FILE(REMOVE_RECURSE
  "msg_gen"
  "src/drone_demo/msg"
  "msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "msg_gen/cpp/include/drone_demo/Navdata.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
