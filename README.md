# DEStackView
My first Cocoapods library that veryvery simple

Just 'Addable, deleteable StackView'



# Usage

You can install the library only using Cocoapods

```
pod 'DEStackView'
```



# Set up

1. create the view hierarchy as shown in the next picture.

2. You can use the storyboard or implement it in code. (Content Layout Guide and Frame Layout Guide may not be in view herarchy. And you can add any view as subView of scrollView.)

![viewHierarchy](https://github.com/DAEUN28/DEStackView/blob/master/Images/viewHierarchy.png)

3. StackView must inherit DEStackView.
4. Every time a addBtn is tap, create a new CustomView class object. And use addView(newView:) method in DEStackView. 
5. Transfer created new object to newView parameter.
6. Now you can use the DEStackView.



# Make a CustomView



#### If you using the Storyboard 

------

1. You must create {CustomView}.swift and {CustomView}.xib files.

2. In {CustomView}.swift file, make a CustomView class that inherit DEXibView.

   ```swift
   class CustomView: DEXibView
   ```

3. After implementing the view you want, select the CustomView class as custom class of File's Owner.

4. If you want setting the UI Every time a view is added, You can override initUI() method.

5. if you don't want to make a delete button, this step can ignore.

   1. Create outlet variable that is connected to the delete button in CustomView class.

   2. Use the addTarget(_:action:for:) method in deleteButton in initUI() method.

   3. Transfer deleteBtnTaps @objc method in DEView to action parameter.

   4. See the following example.

   5. ```swift
      deleteBtn.addTarget(self, action: #selector(deleteBtnTaps), for: .touchUpInside)
      ```



#### If you implement it in code

------

1. You must create {CustomView}.swift file.

2. In {CustomView}.swift file, make a CustomView class that inherit DEView.

   ```swift
   class CustomView: DEView
   ```

3. if you don't want to make a delete button, this step can ignore.

   1. Create deleteButton in CustomView class.

   2. Use the addTarget(_:action:for:) method in deleteButton in initUI() method.

   3. Transfer deleteBtnTaps @objc method in DEView to action parameter.

   4. See the following example.

   5. ```swift
      deleteBtn.addTarget(self, action: #selector(deleteBtnTaps), for: .touchUpInside)
      ```





# Contributors

Welcome to contributing!



