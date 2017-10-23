def split(a, n):
    k, m = divmod(len(a), n)
    return (a[i * k + min(i, m):(i + 1) * k + min(i + 1, m)] for i in xrange(n))

fh = open('commands_train.txt', 'r')
all_lines = fh.readlines()
fh.close()

N = 6
for i, lines in enumerate(split(all_lines, N)):
    fh = open('prj%d.sh'%(i+1), 'w')
    fh.writelines(lines)
    fh.close()
