#!/bin/bash

#usage: ./newvhdl "intended name of the file"
#takes in the entity and architecture name, number of inputs, outputs and their intended names and datatypes
#outputs a .vhdl file with the frame

echo name of the entity
read entity
echo name of the architecture
read arch 
echo number of inputs
read inp
echo number of outputs
read out

cat <<EOF >> $1.vhdl
entity $entity is
 port ( 
EOF

for (( i=0; i<$inp; i++))
do
echo input$i name and datatype
read dn dt
cat <<EOF >> $1.vhdl
   $dn   : in $dt;
EOF
done

for (( i=0; i<$out; i++))
do
echo output$i name and datatype
read dn dt
cat <<EOF >> $1.vhdl
   $dn : out $dt;
EOF
done

cat <<EOF >> $1.vhdl
      );
end $entity;

architecture $arch of $entity is

begin

end $arch
EOF

