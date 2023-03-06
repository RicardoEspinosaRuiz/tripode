altura=19.5;
x1=10.5;//presilla
x2=9.5; //cubo
x3=4;//pasante
py1=9;
py2=py1+4;
py3=22;
py4=py3+4;
px1=30;
diametroPresilla=4;
rp=diametroPresilla/2;

CubePoints1 = [
  [ -x1/2,  0,  0 ],  //0
  [ -x1/2+x2,  0,  0 ],  //1
  [ -x1/2+x2,  14,  0 ],  //2
  [  -x1/2,  11,  0 ],  //3
  [  -x1/2,  0,  altura ],  //4
  [ -x1/2+x2,  0,  altura ],  //5
  [ -x1/2+x2,  14,  altura ],  //6
  [  -x1/2,  11,  altura ]]; //7
  
CubeFaces = [
  [0,1,2,3],  // bottom
  [4,5,1,0],  // front
  [7,6,5,4],  // top
  [5,6,2,1],  // right
  [6,7,3,2],  // back
  [7,4,0,3]]; // left

$fn=30;

difference(){

union(){
cylinder(h=altura,d=x1);
polyhedron( CubePoints1, CubeFaces );
    }
translate([-0.8,0,0])
cylinder(h=altura*3, d=x3, center=true);
}

hull(){
translate([ (-x1/2)+rp,  py2-rp,  0 ])
cylinder(h=altura,d=4);
    
translate([ px1,  py4-rp,  rp ])
sphere(rp);
    
translate([ px1,  py4-rp,  altura-rp ])
sphere(rp);
}