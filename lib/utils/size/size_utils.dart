double height = 0.0;
double width = 0.0;

extension Size on int {
 double getH() {
   return (this / 926) * height;
  }

 double getW() {
   return (this / 428) * width;
  }
}
