let titles_type = ["Dataset", "Survey", "Review", "Overview"];
let titles_object = ["Quadrotor", "UAV", "UGV", "Quadruped", "Humanoid"];
let titles_modules = ["Planner", "Planning", "Trajectory", "Localization", "SLAM", "Odometry"];
let titles_methods = ["Optimization", "Learning"];
let titles =  titles_type + titles_object + titles_modules + titles_methods;

let authors_1 = ["Fei Gao", "Boyu Zhou", "Wenchao Ding", "Shaojie Shen", "Tong Qin", "Guanya Shi", "Quan Quan", "Yunlong Song", "Peng Yin", "Ji Zhang", "Hang Zhao"];
let authors_2 = ["Yann LeCun", "Geoffrey Hinton", "Yoshua Bengio", "Li Fei-Fei", "Vijay Kumar", "Davide Scaramuzza", "Jonathan P. How", "Russ Tedrake", "Ilya Sutskever"];
let authors_array = authors_1 + authors_2;

let conferences = [
    // AI
    "AAAI", "AAMAS", "ACM MM", "AISTATS", "ALT", "CEC", "ECAI", "FUZZ IEEE", "GECCO", "ICANN", "ICAPS", "ICCBR", "ICONIP", "ICTAI", "IJCAI", "IJCNN", "KR", "KSEM", "SIGGRAPH", "STOC", "UAI", "PPSN", "PRICAI", "TAAI",
    // CV
    "3DV", "ACCV", "ACM MM", "BMVC", "CVPR", "ECCV", "ICCV", "ICDAR", "ICIP", "ICME", "ICPR", "IEEE VIS", "MICCAI", "SIGGRAPH", "WACV",
    // ML
    "ACML", "AISTATS", "ECML", "ICLR", "ICML", "ML4H", "NeurIPS", "NIPS", "UAI",
    // NLP
    "AACL", "ACL", "CCL", "COLING", "COLT", "CoNLL", "EACL", "EMNLP", "ICASSP", "ICDAR", "ICONIP", "INTERSPEECH", "LREC", "NAACL", "NLPCC", "RepL4NLP", "SIGDIAL", "SemEval", "WANLP", "WASSA", "WOAH",
    // Robotics
    "ICRA", "IROS", "RSS", "CORL", "CoRL"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
