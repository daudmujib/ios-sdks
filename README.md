# SimpliFi SDK Documentation

## Overview
The SimpliFi SDK provides a set of powerful functionalities for seamless integration into your mobile applications. With SimpliFi, developers can easily implement features related to card management and electronic Know Your Customer (eKYC) verification. This documentation will guide you through the installation process and provide detailed information about the available APIs.

## Table of Contents
- [Installation](#installation)
- [SimpliFiCard SDK](#simplificard-sdk)
  - [API Reference](#api-reference)
  - [SFRequest Structure](#sfrequest-structure)
- [SimpliFiEkyc SDK](#simplifiekyc-sdk)
  - [API Reference](#api-reference-1)
  - [EkycDelegate Protocol](#ekycdelegate-protocol)
- [Security Considerations](#security-considerations)
- [Release Notes and Versioning](#release-notes-and-versioning)
- [Support and Contact Information](#support-and-contact-information)

## Installation
To install the SimpliFi SDK, follow these steps:

1. Add the SimpliFi source repository at the top of your `Podfile`:
   ```
   source 'https://github.com/daudmujib/ios-sdks.git'
   ```

2. Add SimpliFiCard and SimpliFiEkyc as dependencies in your project's `Podfile`:
   ```
   pod 'SimpliFiCard'
   pod 'SimpliFiEkyc'
   ```

3. Run `pod install` in your project directory to install the SDKs and their dependencies.

4. Import the SimpliFiCard and SimpliFiEkyc modules in your Swift files:
   ```
   import SimpliFiCard
   import SimpliFiEkyc
   ```

You're now ready to use the SimpliFiCard and SimpliFiEkyc SDKs in your project.

## SimpliFiCard SDK
The SimpliFiCard SDK provides a powerful set of card-related functionalities for seamless integration into your mobile applications. With SimpliFiCard, developers can easily implement features such as displaying card details, requesting physical cards, activating cards, retrieving PINs, and setting PINs. This SDK ensures a smooth and secure experience for users when managing card information.

### API Reference

#### `SFCard.showDetail(for request: SFRequest, on controller: UIViewController)`

Displays the card details based on the provided `SFRequest` parameters.

- `request`: An `SFRequest` object that includes the necessary parameters for fetching card details.
- `controller`: The view controller from which the card details should be presented.

#### `SFCard.requestPhysicalCard(for request: SFRequest, on controller: UIViewController)`

Requests the conversion of a virtual card to a physical card.

- `request`: An `SFRequest` object that includes the necessary parameters for the request.
- `controller`: The view controller from which the request should be initiated.

#### `SFCard.activate(for request: SFRequest, on controller: UIViewController)`

Activates a card based on the provided `SFRequest` parameters.

- `request`: An `SFRequest` object that includes the necessary parameters for card activation.
- `controller`: The view controller from which the request should be initiated.

#### `SFCard.getPin(for request: SFRequest, on controller: UIViewController)`

Shows the PIN of a card using the corresponding `SFRequest` parameters.

- `request`: An `SFRequest` object that includes the necessary parameters for fetching the PIN.
- `controller`: The view controller from which the request should be initiated.

#### `SFCard.setPin(for request: SFRequest, on controller: UIViewController)`

Sets the PIN of a card.

- `request`: An `SFRequest` object that includes the necessary parameters for setting the PIN.
- `controller`: The view controller from which the request should be initiated.

##### SFRequest Structure

The `SFRequest` structure defines the parameters required for making requests to SimpliFiCard methods. It includes the following properties:

- `userUuid`: The UUID of the user associated with the card.
- `cardUuid`: The UUID of the card.
- `companyUuid`: The UUID of the company.
- `token`: The authentication token for the request.

## SimpliFiEkyc SDK
The SimpliFiEkyc SDK enables electronic Know Your Customer (eKYC) verification within your mobile applications. With SimpliFiEkyc, developers can easily initiate eKYC journeys, track their progress, and handle the verification results. This SDK streamlines the user verification process and enhances the security of your application.

### API Reference

#### `SFEkyc.start(for request: SFRequest, on controller: UIViewController, delegate: EkycDelegate?)`

Starts the electronic Know Your Customer (eKYC) verification process based on the provided `SFRequest` parameters.

- `request`: An `SFRequest` object that includes the necessary parameters for the eKYC verification.
- `controller`: The view controller from which the eKYC verification process should be initiated.
- `delegate`: An optional `EkycDelegate` object that acts as the delegate for the eKYC verification process.

##### `EkycDelegate` Protocol

The `EkycDelegate` protocol defines the methods that can be implemented by a delegate to receive eKYC verification process-related events. It includes the following methods:

- `journeyStarted(journeyID: String)`: Called when the eKYC verification journey is started. The `journeyID` parameter represents the unique identifier for the journey.
- `onJourneyResumed(journeyID: String)`: Called when the eKYC verification journey is resumed. The `journeyID` parameter represents the unique identifier for the journey.
- `journeyCancelled()`: Called when the eKYC verification journey is cancelled.
- `journeyFinished()`: Called when the eKYC verification journey is successfully completed.
- `onError(error: NSError)`: Called when an error occurs during the eKYC verification process. The `error` parameter represents the error that occurred.

Make sure to implement the `EkycDelegate` methods to handle the eKYC verification process events and provide appropriate actions or feedback to the users.

## Security Considerations
SimpliFi SDKs prioritize security when handling sensitive data, such as card information and user verification details. The SDKs implement encryption mechanisms and follow industry best practices to ensure the confidentiality and integrity of the data. However, it is essential to implement additional security measures in your application to protect user data and comply with relevant regulations.

## Release Notes and Versioning
- SimpliFiCard SDK, version 1.0.0
  - Initial release of SimpliFiCard SDK.
  - Added methods for showing card details, requesting physical cards, activating cards, retrieving PINs, and setting PINs.

- SimpliFiEkyc SDK, version 1.0.0
  - Initial release of SimpliFiEkyc SDK.
  - Added method for initiating eKYC verification journeys.

## Support and Contact Information
If you need any assistance or have questions regarding SimpliFi SDKs, you can reach out to our support team at support@simplifipay.com.
