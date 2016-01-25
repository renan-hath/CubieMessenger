.class public final enum Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;
.super Ljava/lang/Enum;
.source "Voip.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

.field public static final enum AUTHENTICATION_FAIL:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

.field public static final AUTHENTICATION_FAIL_VALUE:I = 0x2

.field public static final enum DIALER_LOST:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

.field public static final DIALER_LOST_VALUE:I = 0x3

.field public static final enum OK:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

.field public static final OK_VALUE:I = 0x0

.field public static final enum PLATFORM_ERROR:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

.field public static final PLATFORM_ERROR_VALUE:I = 0x1

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4484
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    const-string/jumbo v1, "OK"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->OK:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    .line 4492
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    const-string/jumbo v1, "PLATFORM_ERROR"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->PLATFORM_ERROR:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    .line 4500
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    const-string/jumbo v1, "AUTHENTICATION_FAIL"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->AUTHENTICATION_FAIL:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    .line 4504
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    const-string/jumbo v1, "DIALER_LOST"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->DIALER_LOST:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    .line 4480
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    sget-object v1, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->OK:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->PLATFORM_ERROR:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->AUTHENTICATION_FAIL:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->DIALER_LOST:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->$VALUES:[Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    .line 4552
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status$1;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 4561
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4562
    iput p4, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->value:I

    .line 4563
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4507
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 4511
    packed-switch p0, :pswitch_data_0

    .line 4521
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4513
    :pswitch_0
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->OK:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    goto :goto_0

    .line 4515
    :pswitch_1
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->PLATFORM_ERROR:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    goto :goto_0

    .line 4517
    :pswitch_2
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->AUTHENTICATION_FAIL:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    goto :goto_0

    .line 4519
    :pswitch_3
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->DIALER_LOST:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    goto :goto_0

    .line 4511
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4480
    const-class v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;
    .locals 1

    .prologue
    .line 4480
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->$VALUES:[Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    invoke-virtual {v0}, [Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 4567
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->value:I

    return v0
.end method
