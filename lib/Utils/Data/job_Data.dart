//Lưu dữ liệu cứng để Render tạm

import 'package:my_app_test/Utils/Constants/image__constants.dart';
import 'package:my_app_test/models/JobModels/JobModel.dart';

class JobData {
  static List<JobModel> jobList = [
    JobModel(
      jobId: '1',
      title: 'Software Developer',
      jobDescription: 'Develop and maintain software applications.',
      price: '\$5000 - \$7000',
      companyLogo: ImageConstants.companyLogo,
      companyName: 'Tech Solutions Ltd.',
      salary: '\$6000',
    ),
    JobModel(
      jobId: '2',
      title: 'Graphic Designer',
      jobDescription: 'Create visually appealing designs for web and print.',
      price: '\$3500 - \$4500',
      companyLogo: ImageConstants.companyLogo,
      companyName: 'Design Studios',
      salary: '\$4000',
    ),
    JobModel(
      jobId: '3',
      title: 'Product Manager',
      jobDescription: 'Oversee product development and lifecycle.',
      price: '\$7000 - \$9000',
      companyLogo: ImageConstants.companyLogo,
      companyName: 'Innovate Corp.',
      salary: '\$8000',
    ),
    JobModel(
      jobId: '4',
      title: 'Marketing Specialist',
      jobDescription: 'Create and manage marketing campaigns.',
      price: '\$4000 - \$6000',
      companyLogo: ImageConstants.companyLogo,
      companyName: 'MarketPro',
      salary: '\$5000',
    ),
    JobModel(
      jobId: '5',
      title: 'UX/UI Designer',
      jobDescription: 'Design user-friendly interfaces and experiences.',
      price: '\$4500 - \$6500',
      companyLogo: ImageConstants.companyLogo,
      companyName: 'Creative Hub',
      salary: '\$5500',
    ),
  ];

}

