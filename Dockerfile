FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IGN1c3RvbS1ydW50aW1lLWNvbm5lY3Rvci1hcGIKZGVzY3JpcHRp\
b246IEN1c3RvbSBSdW50aW1lIENvbm5lY3RvcgpiaW5kYWJsZTogRmFsc2UKYXN5bmM6IG9wdGlv\
bmFsCnRhZ3M6CiAgLSBtb2JpbGUtc2VydmljZQptZXRhZGF0YToKICBkaXNwbGF5TmFtZTogQ3Vz\
dG9tIFJ1bnRpbWUgQ29ubmVjdG9yCiAgY29uc29sZS5vcGVuc2hpZnQuaW8vaWNvbkNsYXNzOiBm\
YSBmYS1wbHVnCiAgZG9jdW1lbnRhdGlvblVybDogImh0dHA6Ly93d3cuYWVyb2dlYXIub3JnL2N1\
c3RvbS1ydW50aW1lLWNvbm5lY3Rvci9kb2N1bWVudGF0aW9uLmh0bWwiCiAgcHJvdmlkZXJEaXNw\
bGF5TmFtZTogIlJlZCBIYXQsIEluYy4iCiAgZGVwZW5kZW5jaWVzOiBbXQogIHNlcnZpY2VOYW1l\
OiBjdXN0b20tcnVudGltZS1jb25uZWN0b3IKcGxhbnM6CiAgLSBuYW1lOiBkZWZhdWx0CiAgICBk\
ZXNjcmlwdGlvbjogVGhpcyBkZWZhdWx0IHBsYW4gZGVwbG95cyBjdXN0b20tcnVudGltZS1jb25u\
ZWN0b3ItYXBiCiAgICBmcmVlOiBUcnVlCiAgICBtZXRhZGF0YToge30KICAgIHBhcmFtZXRlcnM6\
CiAgICAtIG5hbWU6IFNFUlZJQ0VfTkFNRQogICAgICByZXF1aXJlZDogVHJ1ZQogICAgICB0eXBl\
OiBzdHJpbmcKICAgICAgdGl0bGU6IFNlcnZpY2UgTmFtZQogICAgLSBuYW1lOiBTRVJWSUNFX1VS\
SQogICAgICByZXF1aXJlZDogVHJ1ZQogICAgICB0eXBlOiBzdHJpbmcKICAgICAgdGl0bGU6IFNl\
cnZpY2UgVVJMCiAgICAtIG5hbWU6IFNFUlZJQ0VfQ09ORklHCiAgICAgIHJlcXVpcmVkOiBGYWxz\
ZQogICAgICB0eXBlOiBzdHJpbmcKICAgICAgZGlzcGxheV90eXBlOiB0ZXh0YXJlYQogICAgICB0\
aXRsZTogU2VydmljZSBKU09OIENvbmZpZ3VyYXRpb24="

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb