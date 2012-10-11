FILE(REMOVE_RECURSE
  "msg_gen"
  "srv_gen"
  "src/drone_demo/msg"
  "src/drone_demo/srv"
  "msg_gen"
  "srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_cpp"
  "srv_gen/cpp/include/drone_demo/CamSelect.h"
  "srv_gen/cpp/include/drone_demo/HullSelect.h"
  "srv_gen/cpp/include/drone_demo/LedAnim.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
