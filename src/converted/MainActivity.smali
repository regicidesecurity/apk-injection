.class public Lcom/blasec/myapplication/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field private binding:Lcom/blasec/myapplication/databinding/ActivityMainBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 21
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/blasec/myapplication/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/blasec/myapplication/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/blasec/myapplication/databinding/ActivityMainBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/blasec/myapplication/MainActivity;->binding:Lcom/blasec/myapplication/databinding/ActivityMainBinding;

    .line 24
    iget-object v0, p0, Lcom/blasec/myapplication/MainActivity;->binding:Lcom/blasec/myapplication/databinding/ActivityMainBinding;

    invoke-virtual {v0}, Lcom/blasec/myapplication/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/blasec/myapplication/MainActivity;->setContentView(Landroid/view/View;)V

    .line 26
    sget v0, Lcom/blasec/myapplication/R$id;->nav_view:I

    invoke-virtual {p0, v0}, Lcom/blasec/myapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 29
    .local v0, "navView":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    new-instance v1, Landroidx/navigation/ui/AppBarConfiguration$Builder;

    sget v2, Lcom/blasec/myapplication/R$id;->navigation_home:I

    sget v3, Lcom/blasec/myapplication/R$id;->navigation_dashboard:I

    sget v4, Lcom/blasec/myapplication/R$id;->navigation_notifications:I

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/navigation/ui/AppBarConfiguration$Builder;-><init>([I)V

    .line 31
    invoke-virtual {v1}, Landroidx/navigation/ui/AppBarConfiguration$Builder;->build()Landroidx/navigation/ui/AppBarConfiguration;

    move-result-object v1

    .line 32
    .local v1, "appBarConfiguration":Landroidx/navigation/ui/AppBarConfiguration;
    sget v2, Lcom/blasec/myapplication/R$id;->nav_host_fragment_activity_main:I

    invoke-static {p0, v2}, Landroidx/navigation/Navigation;->findNavController(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object v2

    .line 33
    .local v2, "navController":Landroidx/navigation/NavController;
    invoke-static {p0, v2, v1}, Landroidx/navigation/ui/NavigationUI;->setupActionBarWithNavController(Landroidx/appcompat/app/AppCompatActivity;Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)V

    .line 34 //added smali here
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Hello"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    iget-object v3, p0, Lcom/blasec/myapplication/MainActivity;->binding:Lcom/blasec/myapplication/databinding/ActivityMainBinding;

    iget-object v3, v3, Lcom/blasec/myapplication/databinding/ActivityMainBinding;->navView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {v3, v2}, Landroidx/navigation/ui/NavigationUI;->setupWithNavController(Lcom/google/android/material/navigation/NavigationBarView;Landroidx/navigation/NavController;)V

    .line 36
    return-void
.end method
