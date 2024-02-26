# getx_clean_architecture

A  Flutter boilerplate using Clean Architecture for TDD in Getx.

## Clone and start project
Before discovering folders lets first perform some actions to make the project ready to launch

- To run in iOS you must have installed cocoapods in your mac , Let's **_delete Pods folder and Podfile.lock_** and run
  ```
  flutter clean
  ```
  ```
  flutter pub get
  ```
  ```
  cd ios
  ```
  ```
  pod install
  ```
  ```
  cd..
  ```

## 📂 Directory Structure (Clean architecture version + GetX)
```
📂lib
│───main.dart  
│───di.dart  
│───📂common  
│   │───📂controller
│   │   └──base_controller.dart
│   │───📂usecase
│   │   └──usecase.dart
│   │───📂repository
│   │   └──repository_helper.dart
│   │───📂network
│   │   │──api_config.dart
│   │   │──api_base.dart
│   │   │──dio_client.dart
│   │   │──dio_exception.dart
│   │   └──dio_interceptor.dart
│   │───📂widget
│   │   │──date_time_picker.dart
│   │   │──drop_down.dart
│   │   │──empty_widget.dart
│   │   │──popup_menu.dart
│   │   │──spinkit_indicator.dart
│   │   └──text_input.dart
│   └───📂dialog
│       │──create_dialog.dart
│       │──delete_dialog.dart
│       │──progress_dialog.dart
│       └──retry_dialog.dart
│───📂core
│   │──app_asset.dart
│   │──app_extension.dart
│   │──app_string.dart
│   │──app_style.dart
│   └──app_theme.dart
│
└───📂features
    │───📂user
    │    │───📂data
    │    │   │──📂datasources
    │    │   │  └──user_remote_data_source.dart
    │    │   │──📂models
    │    │   │   │──user.dart
    │    │   │   └──user.g.dart
    │    │   └──📂repositories
    │    │       └──user_repository_impl.dart
    │    │───📂domain
    │    │   │───📂entities
    │    │   │   └──user_entity.dart
    │    │   │───📂repositories
    │    │   │   └──user_repository.dart
    │    │   │───📂usecases
    │    │   │   │──create_user_usecase.dart
    │    │   │   │──delete_user_usecase.dart
    │    │   │   │──get_users_usecase.dart
    │    │   │   └──update_user_usecase.dart
    │    └── 📂presentation
    │        │───📂controller
    │        │   └──user_controller.dart
    │        │───📂screens
    │        │   └──user_list_screen.dart
    │        └───📂widgets
    │            └──status_container.dart
    │
    │───📂todo
    │    │───📂data
    │    │   │──📂datasources
    │    │   │  └──todo_remote_data_source.dart
    │    │   │──📂models
    │    │   │   │──todo.dart
    │    │   │   └──todo.g.dart
    │    │   └──📂repositories
    │    │       └──todo_repository_impl.dart
    │    │───📂domain
    │    │   │───📂entities
    │    │   │   └──todo_entity.dart
    │    │   │───📂repositories
    │    │   │   └──todo_repository.dart
    │    │   │───📂usecases
    │    │   │   │──create_todo_usecase.dart
    │    │   │   │──delete_todo_usecase.dart
    │    │   │   │──get_todos_usecase.dart
    │    │   │   └──update_todo_usecase.dart
    │    └── 📂presentation
    │        │───📂controller
    │        │   └──todo_controller.dart
    │        │───📂screens
    │        │   └──todo_list_screen.dart
    │        └───📂widgets
    │            │──circle_container.dart
    │            └──todo_list_item.dart
    │───📂post
    │    │───📂data
    │    │   │──📂datasources
    │    │   │  └──post_remote_data_source.dart
    │    │   │──📂models
    │    │   │   │──post.dart
    │    │   │   └──post.g.dart
    │    │   └──📂repositories
    │    │       └──post_repository_impl.dart
    │    │───📂domain
    │    │   │───📂entities
    │    │   │   └──post_entity.dart
    │    │   │───📂repositories
    │    │   │   └──post_repository.dart
    │    │   │───📂usecases
    │    │   │   │──create_post_usecase.dart
    │    │   │   │──delete_post_usecase.dart
    │    │   │   │──get_posts_usecase.dart
    │    │   │   └──update_post_usecase.dart
    │    └── 📂presentation
    │        │───📂controller
    │        │   └──post_controller.dart
    │        └───📂screens
    │            │──create_post_screen.dart
    │            │──post_detail_screen.dart
    │            └──post_list_screen.dart
    └───📂comment
         │───📂data
         │   │──📂datasources
         │   │  └──comment_remote_data_source.dart
         │   │──📂models
         │   │   │──comment.dart
         │   │   └──comment.g.dart
         │   └──📂repositories
         │       └──comment_repository_impl.dart
         │───📂domain
         │   │───📂entities
         │   │   └──comment_entity.dart
         │   │───📂repositories
         │   │   └──comment_repository.dart
         │   │───📂usecases
         │   │   │──create_comment_usecase.dart
         │   │   │──delete_comment_usecase.dart
         │   │   └──get_comments_usecase.dart
         └── 📂presentation
             └───📂controller
                 └──comment_controller.dart


```

## Support

For support, emailmirmoktadir@gmail.com or Facebook [Mir Moktadir](https://www.facebook.com/moktadir91/).