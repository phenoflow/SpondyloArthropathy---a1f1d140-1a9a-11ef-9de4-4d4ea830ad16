# Sara Muller, Samantha L Hider, Karim Raza, Rebecca J Stack, Richard A Hayward, Christian D Mallen, 2024.

import sys, csv, re

codes = [{"code":"N112200","system":"readv2"},{"code":"N112100","system":"readv2"},{"code":"N11B100","system":"readv2"},{"code":"N114200","system":"readv2"},{"code":"N110100","system":"readv2"},{"code":"N110.00","system":"readv2"},{"code":"N113000","system":"readv2"},{"code":"N111100","system":"readv2"},{"code":"N113.00","system":"readv2"},{"code":"N112.00","system":"readv2"},{"code":"N11C100","system":"readv2"},{"code":"N114.00","system":"readv2"},{"code":"N119.00","system":"readv2"},{"code":"N112300","system":"readv2"},{"code":"N115200","system":"readv2"},{"code":"N111200","system":"readv2"},{"code":"N11C200","system":"readv2"},{"code":"N112000","system":"readv2"},{"code":"N119100","system":"readv2"},{"code":"N11C000","system":"readv2"},{"code":"N119200","system":"readv2"},{"code":"N119000","system":"readv2"},{"code":"N11z100","system":"readv2"},{"code":"N115.00","system":"readv2"},{"code":"N11B.00","system":"readv2"},{"code":"N11zz00","system":"readv2"},{"code":"N110.11","system":"readv2"},{"code":"N113200","system":"readv2"},{"code":"N11B000","system":"readv2"},{"code":"N11z000","system":"readv2"},{"code":"N114100","system":"readv2"},{"code":"N388.00","system":"readv2"},{"code":"N11z.00","system":"readv2"},{"code":"N115100","system":"readv2"},{"code":"F163200","system":"readv2"},{"code":"N11E.00","system":"readv2"},{"code":"N11B200","system":"readv2"},{"code":"N115000","system":"readv2"},{"code":"N110200","system":"readv2"},{"code":"N110000","system":"readv2"},{"code":"N111.00","system":"readv2"},{"code":"N114000","system":"readv2"},{"code":"N112.11","system":"readv2"},{"code":"N111000","system":"readv2"},{"code":"N11C.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('spondyloarthropathy-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["spondyloarthropathy-spondylolysis---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["spondyloarthropathy-spondylolysis---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["spondyloarthropathy-spondylolysis---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
