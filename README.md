# SimpliFiCard SDK Documentation

**SDK Name:** SimpliFiCard

## Overview
SimpliFiCard SDK provides a powerful set of card-related functionalities for seamless integration into your mobile applications. With SimpliFiCard, developers can easily implement features such as displaying card details, requesting physical cards, activating cards, retrieving PINs, and setting PINs. This SDK ensures a smooth and secure experience for users when managing card information.

Installation

To install SimpliFiCard SDK, follow these steps:

Certainly! Here's the updated installation section with the additional information:

## Installation
To install SimpliFiCard SDK, follow these steps:

1. Add the SimpliFiCard source repository at the top of your `Podfile`:
   ```
   source 'https://github.com/daudmujib/ios-sdks.git'
   ```

2. Add SimpliFiCard as a dependency in your project's `Podfile`:
   ```
   pod 'SimpliFiCard'
   ```

3. Run `pod install` in your project directory to install the SDK and its dependencies.

4. Import the SimpliFiCard module in your Swift files:
   ```
   import SimpliFiCard
   ```
5. Initialize the SDK with the base URL using the following method:
   ```
   SFCore.initialize(baseUrl: String)
   ```
   This method initializes the networking stack, logger, and sets the default theme.

   **Parameters:**
   - `baseUrl`: The base URL for the SimpliFiCard API as a string.

   **Example:**
   ```swift
   SFCore.initialize(baseUrl: "https://api.simplificard.com")
   ```

6. You're now ready to use SimpliFiCard in your project.

Please make sure to include the repository source as mentioned in step 1 to access the SimpliFiCard SDK from the provided source repository.

Feel free to customize the documentation further to suit your needs.

## API Reference

### `SFCard.showDetail(for request: SFRequest, on controller: UIViewController)`

Displays the card details based on the provided `SFRequest` parameters.

- `request`: An `SFRequest` object that includes the necessary parameters for fetching card details.
- `controller`: The view controller from which the card details should be presented.

### `SFCard.requestPhysicalCard(for request: SFRequest, on controller: UIViewController)`

Requests the conversion of a virtual card to a physical card.

- `request`: An `SFRequest` object that includes the necessary parameters for the request.
- `controller`: The view controller from which the request should be initiated.

### `SFCard.activate(for request: SFRequest, on controller: UIViewController)`

Activates a card based on the provided `SFRequest` parameters.

- `request`: An `SFRequest` object that includes the necessary parameters for card activation.
- `controller`: The view controller from which the request should be initiated.

### `SFCard.getPin(for request: SFRequest, on controller: UIViewController)`

Show the PIN of a card using the corresponding `SFRequest` parameters.

- `request`: An `SFRequest` object that includes the necessary parameters for fetching the PIN.
- `controller`: The view controller from which the request should be initiated.

### `SFCard.setPin(for request: SFRequest, on controller: UIViewController)`

Sets the PIN of a card.

- `request`: An `SFRequest` object that includes the necessary parameters for setting the PIN.
- `controller`: The view controller from which the request should be initiated.

## SFRequest Structure

The `SFRequest` structure defines the parameters required for making requests to SimpliFiCard methods. It includes the following properties:

- `userUuid`: The UUID of the user associated with the card.
- `cardUuid`: The UUID of the card.
- `companyUuid`: The UUID of the company.
- `token`: The authentication token for the request.

## Security Considerations

SimpliFiCard SDK prioritizes security when handling card information. It implements encryption mechanisms and follows industry best practices to ensure the confidentiality and integrity of sensitive data. However, it is important to implement additional security measures in your application to protect user data.

## Release Notes and Versioning

- Version 3.0.0
  - Initial release of SimpliFiCard SDK.
  - Added methods for showing card details, requesting physical cards, activating cards, retrieving PINs, and setting PINs.

## Support and Contact Information

If you need any assistance or have questions regarding SimpliFiCard SDK, you can reach out to our support team at support@simplifipay.com.
