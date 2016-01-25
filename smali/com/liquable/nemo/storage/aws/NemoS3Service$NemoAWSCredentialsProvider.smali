.class Lcom/liquable/nemo/storage/aws/NemoS3Service$NemoAWSCredentialsProvider;
.super Ljava/lang/Object;
.source "NemoS3Service.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSCredentialsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/storage/aws/NemoS3Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NemoAWSCredentialsProvider"
.end annotation


# instance fields
.field private awsCredentials:Lcom/amazonaws/auth/AWSCredentials;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/storage/aws/NemoS3Service$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/storage/aws/NemoS3Service$1;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/liquable/nemo/storage/aws/NemoS3Service$NemoAWSCredentialsProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getCredentials()Lcom/amazonaws/auth/AWSCredentials;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service$NemoAWSCredentialsProvider;->awsCredentials:Lcom/amazonaws/auth/AWSCredentials;

    return-object v0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public swap(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 0
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/liquable/nemo/storage/aws/NemoS3Service$NemoAWSCredentialsProvider;->awsCredentials:Lcom/amazonaws/auth/AWSCredentials;

    .line 58
    return-void
.end method
