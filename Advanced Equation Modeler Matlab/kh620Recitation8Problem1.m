%Collaborators: Keeyan Haghshenas, Andrew Sengupta
function [friction] = kh620Recitation8Problem1(angles, mass, static, kinetic)

thresholdangle= atand(static);
for i=1:length(angles)
if thresholdangle>=angles(i)
friction(i)= mass*9.8*sind(angles(i));
else
friction(i)= kinetic*mass*9.8*cosd(angles(i));
end
end

x=angles;
y=friction;
plot(angles,friction);

xlabel('Angle of Drawbridge');
ylabel('Force (Newtons)');
title('Drawbridge Car Safety Forces ans165');
legend('Dry Friction, Concrete', 'Wet Friction, Concrete', 'Dry Friction, Wonder Material', 'Wet Friction, Wonder Material');

end 