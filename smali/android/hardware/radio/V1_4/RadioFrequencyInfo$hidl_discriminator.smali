.class public final Landroid/hardware/radio/V1_4/RadioFrequencyInfo$hidl_discriminator;
.super Ljava/lang/Object;
.source "RadioFrequencyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_4/RadioFrequencyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final channelNumber:B = 0x1t

.field public static final range:B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getName(B)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # B

    .line 20
    packed-switch p0, :pswitch_data_0

    .line 23
    const-string v0, "Unknown"

    return-object v0

    .line 22
    :pswitch_0
    const-string v0, "channelNumber"

    return-object v0

    .line 21
    :pswitch_1
    const-string v0, "range"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
