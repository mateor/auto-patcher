.class public final Lcom/android/server/am/LaunchWarningWindow;
.super Landroid/app/Dialog;
.source "LaunchWarningWindow.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 14
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/server/am/ActivityRecord;
    .param p3    # Lcom/android/server/am/ActivityRecord;

    const/4 v5, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    const v3, 0x1030309

    invoke-direct {p0, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v5}, Lcom/android/server/am/LaunchWarningWindow;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/server/am/LaunchWarningWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/android/server/am/LaunchWarningWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    const v3, 0x1090053

    invoke-virtual {p0, v3}, Lcom/android/server/am/LaunchWarningWindow;->setContentView(I)V

    const v3, 0x1040416

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/LaunchWarningWindow;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/am/LaunchWarningWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4, v1, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Lcom/android/server/am/LaunchWarningWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v5, v4}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    const v3, 0x10202b9

    invoke-virtual {p0, v3}, Lcom/android/server/am/LaunchWarningWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x10202ba

    invoke-virtual {p0, v3}, Lcom/android/server/am/LaunchWarningWindow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040417

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x10202bb

    invoke-virtual {p0, v3}, Lcom/android/server/am/LaunchWarningWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x10202bc

    invoke-virtual {p0, v3}, Lcom/android/server/am/LaunchWarningWindow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040418

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
