if (countdown > 0) {
    countdown -= 1 / 60;
    text = string(floor(countdown));
    
    if (countdown <= 1) {
        text = "VAI!!";
        vai_duration = 0.5;
    }
} 
else if (vai_duration > 0) {
    vai_duration -= 1 / 60;
} 
else {
    instance_destroy();
}
