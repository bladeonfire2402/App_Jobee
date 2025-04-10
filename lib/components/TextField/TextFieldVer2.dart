import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class Input extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final String titleText;
  final String inputType;
  final TextEditingController? controller;
  final IconData? icon; // Thêm thuộc tính icon

  const Input({
    super.key,
    this.hintText = '',
    this.obscureText = false,
    this.titleText = '',
    this.inputType = 'text',
    this.icon,
    this.controller
     // Khởi tạo thuộc tính icon
  });

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  bool obscure = false;

  @override
  void initState() {
    super.initState();
    obscure = widget.obscureText; // Khởi tạo giá trị ban đầu cho `obscure`
  }

  @override
  Widget build(BuildContext context) {
    return ShadInput(
      placeholder: Text(widget.hintText), // Sử dụng hintText từ widget
      obscureText: obscure,
      cursorWidth: 1,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(widget.icon ?? LucideIcons.lock), // Sử dụng icon được truyền vào hoặc mặc định
      ),
      decoration: ShadDecoration(
        focusedBorder: const ShadBorder(
          padding: EdgeInsets.all(2)
        
        ),
      ),
      
      trailing: widget.inputType == 'password' // Kiểm tra inputType
          ? ShadButton(
              width: 24,
              height: 24,
           
              decoration: const ShadDecoration(
                secondaryBorder: ShadBorder.none,
                secondaryFocusedBorder: ShadBorder.none,
              ),
              icon: Icon(obscure ? LucideIcons.eyeOff : LucideIcons.eye), // Thay đổi icon dựa trên trạng thái
              onPressed: () {
                setState(() => obscure = !obscure); // Đổi trạng thái `obscure`
              },
            )
          : null, // Nếu không phải password, không hiển thị nút
    );
  }
}