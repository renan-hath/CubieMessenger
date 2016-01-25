.class public final enum Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;
.super Ljava/lang/Enum;
.source "ConfirmFriendNotice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/notice/ConfirmFriendNotice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfirmFriendType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

.field public static final enum CHATTING_ACTIVITY_DIALOG:Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

.field public static final enum CONFIRM:Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

.field public static final enum CONFIRM_CHANNEL_SUBSCRIPTION:Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

.field public static final enum IMPORT_FROM_CONTACTS:Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

.field public static final enum IMPORT_FROM_FACEBOOK:Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;


# instance fields
.field private final i18nKey:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    const-string/jumbo v1, "CONFIRM"

    const v2, 0x7f0d0122

    invoke-direct {v0, v1, v3, v2}, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->CONFIRM:Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    .line 17
    new-instance v0, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    const-string/jumbo v1, "IMPORT_FROM_CONTACTS"

    const v2, 0x7f0d0395

    invoke-direct {v0, v1, v4, v2}, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->IMPORT_FROM_CONTACTS:Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    .line 18
    new-instance v0, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    const-string/jumbo v1, "CHATTING_ACTIVITY_DIALOG"

    const v2, 0x7f0d0122

    invoke-direct {v0, v1, v5, v2}, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->CHATTING_ACTIVITY_DIALOG:Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    .line 19
    new-instance v0, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    const-string/jumbo v1, "IMPORT_FROM_FACEBOOK"

    const v2, 0x7f0d0399

    invoke-direct {v0, v1, v6, v2}, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->IMPORT_FROM_FACEBOOK:Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    .line 20
    new-instance v0, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    const-string/jumbo v1, "CONFIRM_CHANNEL_SUBSCRIPTION"

    const v2, 0x7f0d0116

    invoke-direct {v0, v1, v7, v2}, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->CONFIRM_CHANNEL_SUBSCRIPTION:Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    sget-object v1, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->CONFIRM:Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->IMPORT_FROM_CONTACTS:Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->CHATTING_ACTIVITY_DIALOG:Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->IMPORT_FROM_FACEBOOK:Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->CONFIRM_CHANNEL_SUBSCRIPTION:Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->$VALUES:[Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "i18nKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->i18nKey:I

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    .prologue
    .line 15
    iget v0, p0, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->i18nKey:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->$VALUES:[Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    invoke-virtual {v0}, [Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    return-object v0
.end method
