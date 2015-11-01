




-- https://courses.edx.org/courses/course-v1:DelftX+FP101x+3T2015/courseware/7adb6764fa0240a6a193438a147e9cf7/0b838824d2b342d48920e6cb43778fc7/
--
--
--


twice :: (a->a) -> a -> a 
twice f x = f ( f x) 
