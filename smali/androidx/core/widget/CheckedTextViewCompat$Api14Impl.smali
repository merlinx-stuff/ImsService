.class Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;
.super Ljava/lang/Object;
.source "CheckedTextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/CheckedTextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api14Impl"
.end annotation


# static fields
.field private static sCheckMarkDrawableField:Ljava/lang/reflect/Field;

.field private static sResolved:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    return-void
.end method

.method static getCheckMarkDrawable(Landroid/widget/CheckedTextView;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "textView"    # Landroid/widget/CheckedTextView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textView"
        }
    .end annotation

    .line 177
    sget-boolean v0, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sResolved:Z

    const-string v1, "CheckedTextViewCompat"

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x1

    :try_start_0
    const-class v2, Landroid/widget/CheckedTextView;

    const-string v3, "mCheckMarkDrawable"

    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sCheckMarkDrawableField:Ljava/lang/reflect/Field;

    .line 181
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    goto :goto_0

    .line 182
    :catch_0
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "Failed to retrieve mCheckMarkDrawable field"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    sput-boolean v0, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sResolved:Z

    .line 188
    :cond_0
    sget-object v0, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sCheckMarkDrawableField:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 190
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 191
    :catch_1
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Failed to get check mark drawable via reflection"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    sput-object v2, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sCheckMarkDrawableField:Ljava/lang/reflect/Field;

    .line 196
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    return-object v2
.end method
