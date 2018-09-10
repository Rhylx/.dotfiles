from subprocess import check_output

def get_pass(name, what):
    return check_output("pass " + name + "/" + what, shell=True).splitlines()[0]
