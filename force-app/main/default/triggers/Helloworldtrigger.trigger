trigger Helloworldtrigger on Account (before insert) {
System.debug('Hello World!');
}