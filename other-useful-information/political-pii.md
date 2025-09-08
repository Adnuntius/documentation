# Political - PII

For political advertisment it's important that the personal identifiable information is kept private and that a political ad can't be used for generating a profile on the user. This is a document describing the steps Adnuntius takes to be compliant. The following information will be based upon that a user have never seen an ad from Adnuntius before.

### Request

A request is passed to Adnuntius with the following:

1. IP address
2. User Agent
3. Publisher provided information



### Parsing request

When Adnuntius receives a request the system will do the following:

1. Resolve the IP address to a location based on an IP table lookup. This will ensure that if there's a political ad in the system it will be tied to the correct country and the election that's relevant to it. If this is not in place a political ad may be served to the wrong country of the visinting user. After the IP table lookup the IP address will be anonymised and the entire request will be saved in a log file. There will be no further use of the IP address.
2. User agent is used to detect the current device of the user to ensure that if a political ad is targeted to a mobile device or desktop, it will be served to the correct device type. After this type of matchin has been done it will be written to a log that's kept for 24 hours.
3. A publisher can pass contextual information to Adnuntius  ie. category of the page, keywords, key values etc. This information is used for matching of targeting and then written into a log.



### Ad selection

If a political ad is selected based on, country of origin, user agent and the current pacing of the campaign in Adnuntius. We ensure that there are no cookies written on the client if it's a political ad. We also reduce the targeting types that can be used when a user books an ad. These are the targeting types that can be used for political ads:

1. Device targeting
2. Publisher targeting
3. Site targeting
4. Site country targeting
5. Ad unit targeting
6. Contextual: semantic, category, keyword
7. URL targeting
8. Date targeting

